# OpenAPI automation inputs

Place the following files in this folder:

- `openapi.json`: the Login Enterprise OpenAPI specification to generate from
- `psopenapi.yaml`: OpenAPI Generator settings for PowerShell output

Automation behavior:

- Push changes to `openapi/**` on `dev` -> regenerate module, test, and commit generated output back to `dev`.
- Manual release PR workflow (`Main release PR`) creates or updates a PR from `dev` to `main`.
- After that PR is merged, run manual workflow (`Main publish module`) from `main` -> validate (build + tests) and publish to PowerShell Gallery.

Required repository secret for publish workflow:

- `PSGALLERY_API_KEY`
