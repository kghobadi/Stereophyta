using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

public class LSystems : MonoBehaviour {
    public int iterations;
    public float angle;
    public float width;
    public float minLeafLength;
    public float maxLeafLength;
    public float minBranchLength;
    public float maxBranchLength;
    public float variance;

    public GameObject tree;
    public GameObject branch;
    public GameObject leaf;

    private const string axiom = "X";

    private Dictionary<char, string> rules = new Dictionary<char, string>();
    private Stack<SavedTransform> savedTransforms = new Stack<SavedTransform>();
    private Vector3 initialPosition;

    private string currentPath =  " ";
    private float[] randomRotations;

    private void Awake()
    {
        randomRotations = new float[1000];

        for (int i = 0; i < randomRotations.Length; i++)
        {
            randomRotations[i] = Random.Range(-1f, 1f);
        }

        rules.Add('X', "-[FX][+FX][FX]");
        rules.Add('F', "FF");

        Generate();
    }

    private void Generate()
    {
        currentPath = axiom;

        StringBuilder stringBuilder = new StringBuilder();

        for(int i = 0; i < iterations; i++)
        {
            char[] currentPathChars = currentPath.ToCharArray();

            for(int j = 0; j < currentPathChars.Length; j++)
            {
                stringBuilder.Append(rules.ContainsKey(currentPathChars[j]) ? rules[currentPathChars[j]] : currentPathChars[j].ToString());
            }

            currentPath = stringBuilder.ToString();
            stringBuilder = new StringBuilder();
        }

        for(int k = 0; k < currentPath.Length; k++)
        {
            switch (currentPath[k])
            {
                case 'F':
                    initialPosition = transform.position;
                    bool isLeaf = false;

                    GameObject currentElement;
                    if(currentPath[k+ 1] % currentPath.Length == 'X' || currentPath[k +3] % currentPath.Length == 'F' && currentPath[k + 4] % currentPath.Length == 'X')
                    {
                        currentElement = Instantiate(leaf);
                        isLeaf = true;
                    }
                    else
                    {
                        currentElement = Instantiate(branch);
                    }

                    currentElement.transform.SetParent(tree.transform);

                    LineTreeElement currentTreeElement = currentElement.GetComponent<LineTreeElement>();

                    if (isLeaf)
                    {
                        transform.Translate(Vector3.up * 2f * Random.Range(minLeafLength, maxLeafLength));
                    }
                    else
                    {
                        transform.Translate(Vector3.up * 2f * Random.Range(minBranchLength, maxBranchLength));
                    }

                    currentTreeElement.lineRenderer.startWidth = width;
                    currentTreeElement.lineRenderer.endWidth = width;
                    currentTreeElement.lineRenderer.sharedMaterial = currentTreeElement.material;

                    break;
                case 'X':
                    break;

                case '-':
                    transform.Rotate(Vector3.back * angle * (1f + variance / 100f * randomRotations[k % randomRotations.Length]));
                    break;
                case '+':
                    transform.Rotate(Vector3.back * angle * (1f + variance / 100f * randomRotations[k % randomRotations.Length]));
                    break;
                case '*':
                    transform.Rotate(Vector3.back * 120f * (1f + variance / 100f * randomRotations[k % randomRotations.Length]));
                    break;
                case '/':
                    transform.Rotate(Vector3.back * 120f * (1f + variance / 100f * randomRotations[k % randomRotations.Length]));
                    break;
                case '[':
                    savedTransforms.Push(new SavedTransform()
                    {
                        position = transform.position,
                        rotation = transform.rotation
                    });
                    break;

                case ']':
                    SavedTransform savedTransform = savedTransforms.Pop();

                    transform.position = savedTransform.position;
                    transform.rotation = savedTransform.rotation;
                    break;
            }
        }
    }
}
