                <div id="demo"  class="grid_12">
					<!-- ExtJS -->
					<link rel="stylesheet" type="text/css" href="js/ext-4.0.0/resources/css/ext-all.css" />
					<style type="text/css">
						html, body {
							font:normal 12px verdana;
							margin:0;
							padding:0;
							border:0 none;
							overflow:hidden;
							height:100%;
						}
						.x-panel-body p {
							margin:5px;
						}
						.x-column-layout-ct .x-panel {
							margin-bottom:5px;
						}
						.x-column-layout-ct .x-panel-dd-spacer {
							margin-bottom:5px;
						}
						.settings {
							background-image:url(../shared/icons/fam/folder_wrench.png) !important;
						}
						.nav {
							background-image:url(../shared/icons/fam/folder_go.png) !important;
						}
					</style>
					
					<script type="text/javascript" src="js/ext-4.0.0/bootstrap.js"></script>
					<script type="text/javascript" src="js/ext-4.0.0/examples/shared/examples.js"></script>

					<!-- Shared -->

					<link rel="stylesheet" type="text/css" href="js/ext-4.0.0/examples/shared/example.css" />
					
					<script type="text/javascript">
					Ext.require(['*']);

						Ext.onReady(function(){

						   // NOTE: This is an example showing simple state management. During development,
						   // it is generally best to disable state management as dynamically-generated ids
						   // can change across page loads, leading to unpredictable results.  The developer
						   // should ensure that stable state ids are set for stateful components in real apps.
						   Ext.state.Manager.setProvider(Ext.create('Ext.state.CookieProvider'));

						   var viewport = Ext.create('Ext.Viewport', {
								layout:'border',
								items:[{
									region:'west',
									id:'west-panel',
									title:'West',
									split:true,
									width: 200,
									minSize: 175,
									maxSize: 400,
									collapsible: true,
									margins:'35 0 5 5',
									cmargins:'35 5 5 5',
									layout:'accordion',
									layoutConfig:{
										animate:true
									},
									items: [{
										html: Ext.example.shortBogusMarkup,
										title:'Navigation',
										autoScroll:true,
										border:false,
										iconCls:'nav'
									},{
										title:'Settings',
										html: Ext.example.shortBogusMarkup,
										border:false,
										autoScroll:true,
										iconCls:'settings'
									}]
								},{
									region:'center',
									margins:'35 5 5 0',
									layout:'column',
									autoScroll:true,
									defaults: {
										layout: 'anchor',
										defaults: {
											anchor: '100%'
										}
									},
									items: [{
										columnWidth: 1/3,
										baseCls:'x-plain',
										bodyStyle:'padding:5px 0 5px 5px',
										items:[{
											title: 'A Panel',
											html: Ext.example.shortBogusMarkup
										}]
									},{
										columnWidth: 1/3,
										baseCls:'x-plain',
										bodyStyle:'padding:5px 0 5px 5px',
										items:[{
											title: 'A Panel',
											html: Ext.example.shortBogusMarkup
										}]
									},{
										columnWidth: 1/3,
										baseCls:'x-plain',
										bodyStyle:'padding:5px',
										items:[{
											title: 'A Panel',
											html: Ext.example.shortBogusMarkup
										},{
											title: 'Another Panel',
											html: Ext.example.shortBogusMarkup
										}]
									}]
								}]
							});
						});
					</script>
					<!-- Example -->
					<script type="text/javascript">
					Ext.require([
						'Ext.form.*'
					]);

					Ext.onReady(function() {

						Ext.create('Ext.form.Panel', {
							frame: true,
							renderTo: 'center',
							title: 'Form Fields',
							width: 340,
							bodyPadding: 5,
							autoRender: true,
							
							// The form will submit an AJAX request to this URL when submitted
							url: 'save-form.php',
							
							// Fields will be arranged vertically, stretched to full width
							layout: 'anchor',
							defaults: {
								anchor: '100%'
							},

							fieldDefaults: {
								labelAlign: 'left',
								labelWidth: 90,
								anchor: '100%'
							},

							items: [{
								xtype: 'textfield',
								name: 'textfield1',
								fieldLabel: 'Text field',
								value: 'Text field value'
							}, {
								xtype: 'textfield',
								name: 'password1',
								inputType: 'password',
								fieldLabel: 'Password field'
							}, {
								xtype: 'filefield',
								name: 'file1',
								fieldLabel: 'File upload'
							}, {
								xtype: 'textareafield',
								name: 'textarea1',
								fieldLabel: 'TextArea',
								value: 'Textarea value'
							}, {
								xtype: 'displayfield',
								name: 'displayfield1',
								fieldLabel: 'Display field',
								value: 'Display field <span style="color:green;">value</span>'
							}, {
								xtype: 'numberfield',
								name: 'numberfield1',
								fieldLabel: 'Number field',
								value: 5,
								minValue: 0,
								maxValue: 50
							}, {
								xtype: 'checkboxfield',
								name: 'checkbox1',
								fieldLabel: 'Checkbox',
								boxLabel: 'box label'
							}, {
								xtype: 'radiofield',
								name: 'radio1',
								value: 'radiovalue1',
								fieldLabel: 'Radio buttons',
								boxLabel: 'radio 1'
							}, {
								xtype: 'radiofield',
								name: 'radio1',
								value: 'radiovalue2',
								fieldLabel: '',
								labelSeparator: '',
								hideEmptyLabel: false,
								boxLabel: 'radio 2'
							}, {
								xtype: 'datefield',
								name: 'date1',
								fieldLabel: 'Date Field'
							}, {
								xtype: 'timefield',
								name: 'time1',
								fieldLabel: 'Time Field',
								minValue: '1:30 AM',
								maxValue: '9:15 PM'
							}],
							// Reset and Submit buttons
							buttons: [{
								text: 'Reset',
								handler: function() {
									this.up('form').getForm().reset();
								}
							}, {
								text: 'Submit',
								formBind: true, //only enabled once the form is valid
								disabled: true,
								handler: function() {
									var form = this.up('form').getForm();
									if (form.isValid()) {
										form.submit({
											success: function(form, action) {
											   Ext.Msg.alert('Success', action.result.msg);
											},
											failure: function(form, action) {
												Ext.Msg.alert('Failed', action.result.msg);
											}
										});
									}
								}
							}],
						});
					});
					</script>
						
				</div>
                