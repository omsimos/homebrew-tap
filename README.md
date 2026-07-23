    5. Ensure the target branch is named main.
    6. Commit the file directly.
Then configure the token:
- Create a fine-grained PAT with:
    - Resource owner: omsimos
    - Repository access: homebrew-tap
    - Repository permissions → Contents: Read and write
- Add it in omsimos/nosleep → Settings → Secrets and variables → Actions
- Name it exactly HOMEBREW_TAP_TOKEN
