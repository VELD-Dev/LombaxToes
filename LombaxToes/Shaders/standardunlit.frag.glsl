#version 330

out vec4 frag;

in vec2 UVs;

uniform sampler2D albedo;
uniform bool useTexture;

void main()
{
	if(useTexture)
	{
<<<<<<< Updated upstream
		colour = texture(albedo, UVs);
	}
	else
	{
		colour = vec4(1.0, 0.0, 1.0, 1.0);
=======
		//vec4 texel = texture(albedo, UVs;
		vec4 colour = texture(albedo, UVs);
		if(colour.a == 0.0) discard;
		frag = colour;
	}
	else
	{
		//vec4 texel = texture(noTextureTexture, UVs);
		vec4 colour = vec4(1.0, 0.0, 1.0, 1.0);
		frag = colour;
>>>>>>> Stashed changes
	}
}