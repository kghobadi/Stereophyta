using UnityEngine;

public class TerrainGenerator : MonoBehaviour {

    public int width = 256;
    public int height = 256;

    public int depth = 20;

    public float scale = 20f;

    public float offsetX = 100f;
    public float offsetY = 100f;

    public GameObject theMiner, theWindmill, theHang;

    public int instantAmount = 10;
    public float heightOffset;
    public float instantScale = 50f;
    public float minerOffsetX = 5f;
    public float minerOffsetY = 5f;

    public float sinWaveNumX = 5f;
    public float sinWaveNumY = 5f;

    void Start()
    {
        Terrain terrain = GetComponent<Terrain>();
        terrain.terrainData = GenerateTerrain(terrain.terrainData);
    }

    void Update()
    {
       

    }

    TerrainData GenerateTerrain(TerrainData terrainData)
    {
        terrainData.heightmapResolution = width + 1;

        terrainData.size = new Vector3(width, depth, height);

        terrainData.SetHeights(0, 0, GenerateHeights());

        return terrainData;
    }

    float [,] GenerateHeights()
    {
        float[,] heights = new float[width, height];
        for(int x = 0; x < width; x++)
        {
            for(int y = 0; y < height; y++)
            {
                heights[x, y] = CalculateHeight(x, y);
                if(x < instantAmount && y < instantAmount)
                {
                    Instantiate(theHang, new Vector3(x * instantScale, depth + heightOffset, y * instantScale), Quaternion.Euler(0f, 0f, 0f));

                    //for the islands in the water, want to generate a 'Zone' prefab
                    //assign it a seed as we generate up through the terrain
                    //from 'Zone' (on big trigger) when player enters, that decides what gets generated on the island
                    //these zones can be overlapping, probably have to be so that player never sees something generated
                    //the Hang will luckily hide some stuff

                    //will also want to generate landmarks in the water so that players can find their way
                    // then it will be time to bring out the BOAT!!!
                }
                
            }
        }

        return heights;
    }

    float CalculateHeight(int x, int y)
    {
        float xCoord = (float)x / width * scale + offsetX;
        float yCoord = (float)y / height * scale + offsetY;

        //return Mathf.PerlinNoise(xCoord, yCoord); use this for perlin noise

        return Mathf.Sin(sinWaveNumX * Mathf.PI * xCoord) * Mathf.Sin(sinWaveNumY * Mathf.PI * yCoord);
    }

}
