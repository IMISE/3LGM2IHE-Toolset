log_message('Setup: Activate CORS');
update DB.DBA.HTTP_PATH set HP_OPTIONS = serialize(vector('browse_sheet', '', 'noinherit', 'yes', 'cors', '*', 'cors_restricted', 0))  where HP_LPATH = '/sparql';
DB.DBA.XML_SET_NS_DECL ('ihe', 'https://www.3lgm2.de/resource/ihe/', 2);
log_message('Setup: Load data from .rdf file');
ld_dir_all ('data', '*.rdf', 'no-graph-rdf');
rdf_loader_run();
log_message('Setup: Finished');
