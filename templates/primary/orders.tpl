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
					<script type="text/javascript" src="js/ext-4.0.0/examples/shared/examples.js	"></script>

					<!-- Shared -->

					<link rel="stylesheet" type="text/css" href="js/ext-4.0.0/examples/shared/example.css" />
					<script type="text/javascript">
						Ext.require([
							'Ext.form.*'
						]);
					</script>
					
					<script type="text/javascript">
					Ext.require(['*']);

						Ext.onReady(function(){
						
							var formPanel = Ext.create('Ext.form.Panel', {
								frame: true,
								region: 'center',
								title: 'Form Fields',
								width: 340,
								bodyPadding: 5,

								
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
								}]
				
							});

						   // NOTE: This is an example showing simple state management. During development,
						   // it is generally best to disable state management as dynamically-generated ids
						   // can change across page loads, leading to unpredictable results.  The developer
						   // should ensure that stable state ids are set for stateful components in real apps.
						   Ext.state.Manager.setProvider(Ext.create('Ext.state.CookieProvider'));

							Ext.create('Ext.container.Viewport', {
								layout: 'border',
								renderTo: Ext.getBody(),
								items: [{
									region: 'west',
									collapsible: true,
									title: 'Navigation',
									width: 150
									// could use a TreePanel or AccordionLayout for navigational items
								}, {
									region: 'south',
									title: 'Activity',
									collapsible: true,
									html: 'Ajax request showing orders updating',
									split: true,
									height: 100,
									minHeight: 100
								},{
									id: 'myTab',
									region: 'center',
									xtype: 'tabpanel', // TabPanel itself has no title
									activeTab: 0,      // First tab active by default
									items: {
										title: 'Orders Form',
									}
								}]
							});
						});
						var myTabPanel = Ext.getCmp('myTab');
						
						myTabPanel.add(formPanel);
						myTabPanel.setActiveTab(formPanel);
					</script>
					<!-- Example -->
					
						
				</div>
                