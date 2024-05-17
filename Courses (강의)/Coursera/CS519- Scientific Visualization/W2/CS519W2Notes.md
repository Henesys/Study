# CS519- Week 2

#data_visualization #data_science 

## 3D Computer Graphics

### Rendering

- Visualization & Computer Graphics
	- Visualization is **not** computer graphics
		- Visualization uses computer graphics as a tool
		- You can create great visualizations *without* a deep knowledge of computer graphics
	- We will need to understand what elements of computer graphics impact visualization
		- What impacts application performance?
			- Crucial for interactivity
		- What impacts the visual quality of the rendered image?
			- Important for avoiding distortion in images that may mislead people
	- 3D computer graphics is important for scientific visualization because we often want to see 3D physical domains
- Rendering
	- Rendering (image synthesis) is the automatic process of generating a photorealistic or non- photorealistic image from a 2D or 3D model (or models in what collectively could be called a *scene file*) by means of computer program
	- ![](assets/Rendering.png)
		- Demonstration of rendering techniques applied to a single 3D scene
- 3D Graphics: Image Formation
	- Usually, the goal of computer graphics is to generate a 2D image of a 3D scene
		- Input data is a *scene description*
		- Output is an image
	- Computationally, we need to mimic a camera or the human eye
		- From there, we build a scene with objects, light and a viewer
- Polygonal Models
	- Surfaces are most often modeled using triangles
		- Modern GPUs are designed to render triangles
	- Rendering *generally* uses one of two approaches:
		- Rasterization
		- Ray Tracing
	- Sometimes, both can be used
		- Other methods like radiosity can be used as well
- Rasterization vs. Ray Tracing
	- Rasterization
		- Geometric primitives are projected onto an image plane and the rasterizer decides which pixels get filled
		- ![](assets/Rasterization.png)
	- Ray Tracing
		- Models the physical transport of light by shooting a sampling ray through each pixel in an image plane and seeing what the ray hits in the scene
		- ![](assets/RayTracing.png)
- Ray Tracing
	- Overview
		- You can follow the ray of light
		- Trace from an eyepoint through a pixel
		- Observe what object the ray hits
	- The next task is to determine if the object is lit or is in the shadow
- Ray Tracing in Visualization
	- Ray tracing is used in scientific visualization to generate semi- transparent views of volumes
		- Rays can sample volumes
		- ![](assets/RayTracingVolume.png)
	- Rasterization has difficulty doing this as it is more specialized for surface rendering

### Rasterization

- X

### Shading

- X

### Rendering & Visualization

- X

## Scalar Fields

### Colormaps

- X