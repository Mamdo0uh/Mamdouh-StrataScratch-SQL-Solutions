select filename,contents
from google_file_store
WHERE filename like 'draft%' and contents like '% optimism %'
