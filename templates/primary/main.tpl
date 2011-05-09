            	<!-- ExtJS -->
						<link rel="stylesheet" type="text/css" href="js/ext-4.0.0/resources/css/ext-all.css" />
						<script type="text/javascript" src="js/ext-4.0.0/ext-all.js"></script>

				<article>
                    <header>
                        <h1>Current Open Orders</h1>
                        <div class="comments">55</div>
                    </header>
                  <div id="demo"  class="grid_8">
                    <script type="text/javascript">
						Ext.require([
							'Ext.grid.*',
							'Ext.data.*',
							'Ext.panel.*'
						]);
						Ext.onReady(function(){
							Ext.define('ImageModel', {
								extend: 'Ext.data.Model',
								fields: ['name', 'url', {name:'size', type: 'float'}, {name:'lastmod', type:'date', dateFormat:'timestamp'}]
							});
							var store = Ext.create('Ext.data.JsonStore', {
								model: 'ImageModel',
								proxy: {
									type: 'ajax',
									url: 'js/ext-4.0.0/examples/grid/get-images.php',
									reader: {
										type: 'json',
										root: 'images'
									}
								}
							});
							store.load();

							var listView = Ext.create('Ext.grid.Panel', {
								width:700,
								height:250,
								collapsible:true,
								title:'Current Open Orders<i>(0 items selected)</i>',
								renderTo: 'demo',

								store: store,
								multiSelect: true,
								viewConfig: {
									emptyText: 'No images to display'
								},

								columns: [{
									text: 'File',
									flex: 50,
									dataIndex: 'name'
								},{
									text: 'Last Modified',
									xtype: 'datecolumn',
									format: 'm-d h:i a',
									flex: 35,
									dataIndex: 'lastmod'
								},{
									text: 'Size',
									dataIndex: 'size',
									tpl: '{size:fileSize}',
									align: 'right',
									flex: 15,
									cls: 'listview-filesize'
								}]
							});

							// little bit of feedback
							listView.on('selectionchange', function(view, nodes){
								var l = nodes.length;
								var s = l != 1 ? 's' : '';
								listView.setTitle('Simple ListView <i>('+l+' item'+s+' selected)</i>');
							});
						});

					</script>
                  </div>
                    <div class="spacer"></div>

                    <footer>
                        <span class="newLine"><em>Tags:</em> <a href="#" class="tags">DELL</a><a href="#" class="tags">Motorolla</a><a href="#" class="tags">CISCO</a></span>                    </footer>
                </article>
                <article>
                    <header>
                        <h1>Most Recent Orders Fullfilled</h1>
                        <div class="comments">15</div>
                    </header>
                   		<div id="demo2" >
                                             <script type="text/javascript">
						Ext.require([
							'Ext.grid.*',
							'Ext.data.*',
							'Ext.panel.*'
						]);
						Ext.onReady(function(){
							Ext.define('ImageModel', {
								extend: 'Ext.data.Model',
								fields: ['name', 'url', {name:'size', type: 'float'}, {name:'lastmod', type:'date', dateFormat:'timestamp'}]
							});
							var store = Ext.create('Ext.data.JsonStore', {
								model: 'ImageModel',
								proxy: {
									type: 'ajax',
									url: 'js/ext-4.0.0/examples/grid/get-images.php',
									reader: {
										type: 'json',
										root: 'images'
									}
								}
							});
							store.load();

							var listView = Ext.create('Ext.grid.Panel', {
								width:700,
								height:250,
								collapsible:true,
								title:'Most Recent Orders Fullfilled <i>(0 items selected)</i>',
								renderTo: 'demo2',

								store: store,
								multiSelect: true,
								viewConfig: {
									emptyText: 'No images to display'
								},

								columns: [{
									text: 'File',
									flex: 50,
									dataIndex: 'name'
								},{
									text: 'Last Modified',
									xtype: 'datecolumn',
									format: 'm-d h:i a',
									flex: 35,
									dataIndex: 'lastmod'
								},{
									text: 'Size',
									dataIndex: 'size',
									tpl: '{size:fileSize}',
									align: 'right',
									flex: 15,
									cls: 'listview-filesize'
								}]
							});

							// little bit of feedback
							listView.on('selectionchange', function(view, nodes){
								var l = nodes.length;
								var s = l != 1 ? 's' : '';
								listView.setTitle('Simple ListView <i>('+l+' item'+s+' selected)</i>');
							});
						});

					</script> 
                      </div>
                        <div class="spacer"></div>
                    <footer>
                        <span class="newLine"><em>Tags:</em> <a href="#" class="tags">DELL</a><a href="#" class="tags">Motorolla</a><a href="#" class="tags">CISCO</a></span>                    </footer>
                </article>
                <article>
                    <header>
                        <h1>Orders InRoute to Back Hall</h1>
                        <div class="comments">3</div>
                    </header>
                    	<div id="demo3" >
							<script type="text/javascript">
								Ext.require([
									'Ext.data.*',
									'Ext.grid.*',
									'Ext.tree.*'
								]);

								Ext.onReady(function() {
									//we want to setup a model and store instead of using dataUrl
									Ext.define('Task', {
										extend: 'Ext.data.Model',
										fields: [
											{name: 'task',     type: 'string'},
											{name: 'user',     type: 'string'},
											{name: 'duration', type: 'string'}
										]
									});

									var store = Ext.create('Ext.data.TreeStore', {
										model: 'Task',
										proxy: {
											type: 'ajax',
											//the store will get the content from the .json file
											url: 'js/ext-4.0.0/examples/tree/treegrid.json'
										},
										folderSort: true
									});

									//Ext.ux.tree.TreeGrid is no longer a Ux. You can simply use a tree.TreePanel
									var tree = Ext.create('Ext.tree.Panel', {
										title: 'Orders InRoute to Back Hall',
										width: 700,
										height: 300,
										renderTo: 'demo3',
										collapsible: true,
										useArrows: true,
										rootVisible: false,
										store: store,
										multiSelect: true,
										singleExpand: true,
										//the 'columns' property is now 'headers'
										columns: [{
											xtype: 'treecolumn', //this is so we know which column will show the tree
											text: 'Task',
											flex: 2,
											sortable: true,
											dataIndex: 'task'
										},{
											//we must use the templateheader component so we can use a custom tpl
											xtype: 'templatecolumn',
											text: 'Duration',
											flex: 1,
											sortable: true,
											dataIndex: 'duration',
											align: 'center',
											//add in the custom tpl for the rows
											tpl: Ext.create('Ext.XTemplate', '{duration:this.formatHours}', {
												formatHours: function(v) {
													if (v < 1) {
														return Math.round(v * 60) + ' mins';
													} else if (Math.floor(v) !== v) {
														var min = v - Math.floor(v);
														return Math.floor(v) + 'h ' + Math.round(min * 60) + 'm';
													} else {
														return v + ' hour' + (v === 1 ? '' : 's');
													}
												}
											})
										},{
											text: 'Assigned To',
											flex: 1,
											dataIndex: 'user',
											sortable: true
										}]
									});
								});

							</script>
                      </div>
                        <div class="spacer"></div>
                    <footer>
                        <span class="newLine"><em>Tags:</em> <a href="#" class="tags">DELL</a><a href="#" class="tags">Motorolla</a><a href="#" class="tags">CISCO</a></span>                    </footer>
                </article>
