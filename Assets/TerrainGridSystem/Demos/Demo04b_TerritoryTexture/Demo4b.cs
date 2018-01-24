using UnityEngine;
using System.Collections;

namespace TGS {
				public class Demo4b : MonoBehaviour {

								TerrainGridSystem tgs;
								GUIStyle labelStyle;

								void Start () {
												// setup GUI styles
												labelStyle = new GUIStyle ();
												labelStyle.alignment = TextAnchor.MiddleCenter;
												labelStyle.normal.textColor = Color.black;

												// Get a reference to Terrain Grid System's API
												tgs = TerrainGridSystem.instance;

												// assign a canvas (background) texture
												tgs.canvasTexture = Resources.Load<Texture2D> ("Textures/worldMap");

												// listen to click event and implement territory coloring
												tgs.OnTerritoryClick += (int territoryIndex, int buttonIndex) => {
																// Clear all territories
																// tgs.TerritoryHideRegionSurfaces ();

																// Color clicked territory in white
																tgs.TerritoryToggleRegionSurface (territoryIndex, true, Color.white, false, tgs.canvasTexture);

																// Color neighbours in random yellow colors
//																tgs.TerritoryGetNeighbours (territoryIndex).ForEach ((Territory obj) => {
//																				int tIndex = tgs.TerritoryGetIndex (obj);
//																				Color color = new Color (0.5f, 0.5f, Random.value);
//																				tgs.TerritoryToggleRegionSurface (tIndex, true, color, false, tgs.canvasTexture); 
//																});
												};

								}

								void OnGUI () {
												GUI.Label (new Rect (0, 5, Screen.width, 30), "Click on any position to reveal part of the canvas texture.", labelStyle);
								}



				}
}
