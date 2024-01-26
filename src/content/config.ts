import { defineCollection, z } from 'astro:content';

const app = defineCollection({
	type: 'data',
	// Type-check frontmatter using a schema
	schema: z.object({
		name: z.string(),
		icon: z.string().optional(),
		casaos: z.object({
			icon: z.string(),
			title: z.object({
				en_us: z.string().optional(),
				custom: z.string().optional(),
			}),
		})
	}),
});
export const collections = { app };
