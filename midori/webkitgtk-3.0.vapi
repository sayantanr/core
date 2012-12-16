/* webkit-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "WebKit", lower_case_cprefix = "webkit_")]
namespace WebKit {
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class FaviconDatabase : GLib.Object {
		public signal void icon_loaded (string frame_uri);
		public Gdk.Pixbuf? try_get_favicon_pixbuf (string page_uri, uint width, uint height);
		public void set_path (string? path);
		public void clear ();
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class IconDatabase : GLib.Object {
		public signal void icon_loaded (WebKit.WebFrame web_frame, string frame_uri);
		public Gdk.Pixbuf? get_icon_pixbuf (string page_uri);
		public void set_path (string? path);
		public void clear ();
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMDOMTokenList : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DOMDOMTokenList ();
		[CCode (cname = "webkit_dom_dom_token_list_add")]
		public void add (string token) throws GLib.Error;
		[CCode (cname = "webkit_dom_dom_token_list_contains")]
		public bool contains (string token) throws GLib.Error;
		[CCode (cname = "webkit_dom_dom_token_list_item")]
		public unowned string item (ulong index);
		[CCode (cname = "webkit_dom_dom_token_list_remove")]
		public void remove (string token) throws GLib.Error;
		[CCode (cname = "webkit_dom_dom_token_list_toggle")]
		public bool toggle (string token) throws GLib.Error;
		public ulong length { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMHTMLElement : WebKit.DOMElement {
		[CCode (has_construct_function = false)]
		protected DOMHTMLElement ();
		[CCode (cname = "webkit_dom_html_element_insert_adjacent_element")]
		public unowned WebKit.DOMElement insert_adjacent_element (string where, WebKit.DOMElement element) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_insert_adjacent_html")]
		public void insert_adjacent_html (string where, string html) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_insert_adjacent_text")]
		public void insert_adjacent_text (string where, string text) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_set_content_editable")]
		public void set_content_editable (string value) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_set_inner_html")]
		public void set_inner_html (string value) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_set_inner_text")]
		public void set_inner_text (string value) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_set_lang")]
		public void set_lang (string value);
		[CCode (cname = "webkit_dom_html_element_set_outer_html")]
		public void set_outer_html (string value) throws GLib.Error;
		[CCode (cname = "webkit_dom_html_element_set_outer_text")]
		public void set_outer_text (string value) throws GLib.Error;
		public void set_webkitdropzone (string value);
		public WebKit.DOMHTMLCollection children { get; }
		public WebKit.DOMDOMTokenList class_list { get; }
		public string class_name { get; set; }
		public string content_editable { get; set; }
		public string dir { get; set; }
		public bool draggable { get; set; }
		public bool hidden { get; set; }
		public string id { get; set; }
		public string inner_html { get; set; }
		public string inner_text { get; set; }
		public bool is_content_editable { get; }
		public string lang { get; set; }
		public string outer_html { get; set; }
		public string outer_text { get; set; }
		public bool spellcheck { get; set; }
		public long tab_index { get; set; }
		public string title { get; set; }
		public string webkitdropzone { get; set; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMHTMLCollection : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DOMHTMLCollection ();
		[CCode (cname = "webkit_dom_html_collection_item")]
		public unowned WebKit.DOMNode item (ulong index);
		[CCode (cname = "webkit_dom_html_collection_named_item")]
		public unowned WebKit.DOMNode named_item (string name);
		public ulong length { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMText : WebKit.DOMNode {
		[CCode (has_construct_function = false)]
		protected DOMText ();
		public unowned WebKit.DOMText replace_whole_text (string content) throws GLib.Error;
		public unowned WebKit.DOMText split_text (ulong offset) throws GLib.Error;
		public string whole_text { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMDocument : WebKit.DOMNode {
		[CCode (has_construct_function = false)]
		protected DOMDocument ();
		public unowned WebKit.DOMElement create_element (string tag_name) throws GLib.Error;
		public unowned WebKit.DOMText create_text_node (string data);
		public unowned WebKit.DOMElement get_element_by_id (string element_id);
		public unowned WebKit.DOMNodeList get_elements_by_class_name (string tagname);
		public unowned WebKit.DOMNodeList get_elements_by_name (string element_name);
		public unowned WebKit.DOMNodeList get_elements_by_tag_name (string tagname);
		public bool query_command_enabled (string command);
		public unowned WebKit.DOMElement query_selector (string selectors) throws GLib.Error;
		public unowned WebKit.DOMNodeList query_selector_all (string selectors) throws GLib.Error;
		public WebKit.DOMHTMLCollection anchors { get; }
		public WebKit.DOMHTMLCollection applets { get; }
		public WebKit.DOMHTMLElement body { get; }
		public WebKit.DOMHTMLCollection forms { get; }
		public WebKit.DOMHTMLElement head { get; }
		public WebKit.DOMHTMLCollection images { get; }
		public WebKit.DOMHTMLCollection links { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMElement : WebKit.DOMNode {
		[CCode (has_construct_function = false)]
		protected DOMElement ();
		public void blur ();
		public void focus ();
		public unowned string get_attribute (string name);
		public unowned WebKit.DOMNodeList get_elements_by_class_name (string name);
		public unowned WebKit.DOMNodeList get_elements_by_tag_name (string name);
		public bool has_attribute (string name);
		public unowned WebKit.DOMElement query_selector (string selectors) throws GLib.Error;
		public unowned WebKit.DOMNodeList query_selector_all (string selectors) throws GLib.Error;
		public void remove_attribute (string name) throws GLib.Error;
		public void scroll_into_view (bool align_with_top);
		public void scroll_into_view_if_needed (bool center_if_needed);
		public void set_attribute (string name, string value) throws GLib.Error;
		public bool webkit_matches_selector (string selectors) throws GLib.Error;
		public WebKit.DOMElement first_element_child { get; }
		public WebKit.DOMElement last_element_child { get; }
		public WebKit.DOMElement next_element_sibling { get; }
		public WebKit.DOMElement previous_element_sibling { get; }
		public string tag_name { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMNodeList : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DOMNodeList ();
		public unowned WebKit.DOMNode item (ulong index);
		public ulong length { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class DOMNode : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DOMNode ();
		public unowned WebKit.DOMNode append_child (WebKit.DOMNode new_child) throws GLib.Error;
		public bool contains (WebKit.DOMNode other);
		public unowned WebKit.DOMNode insert_before (WebKit.DOMNode new_child, WebKit.DOMNode ref_child) throws GLib.Error;
		public void normalize ();
		public unowned WebKit.DOMNode remove_child (WebKit.DOMNode old_child) throws GLib.Error;
		public unowned WebKit.DOMNode replace_child (WebKit.DOMNode new_child, WebKit.DOMNode old_child) throws GLib.Error;
		public void set_text_content (string value) throws GLib.Error;
		public WebKit.DOMNodeList child_nodes { get; }
		public WebKit.DOMNode first_child { get; }
		public WebKit.DOMNode last_child { get; }
		public WebKit.DOMNode next_sibling { get; }
		public WebKit.DOMElement parent_element { get; }
		public WebKit.DOMNode parent_node { get; }
		public WebKit.DOMNode previous_sibling { get; }
		public string text_content { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class Download : GLib.Object {
		[CCode (has_construct_function = false)]
		public Download (WebKit.NetworkRequest request);
		public void cancel ();
		public uint64 get_current_size ();
		public unowned string get_destination_uri ();
		public double get_elapsed_time ();
		public unowned WebKit.NetworkRequest get_network_request ();
		public unowned WebKit.NetworkResponse get_network_response ();
		public double get_progress ();
		public WebKit.DownloadStatus get_status ();
		public unowned string get_suggested_filename ();
		public uint64 get_total_size ();
		public unowned string get_uri ();
		public void set_destination_uri (string destination_uri);
		public void start ();
		public uint64 current_size { get; }
		public string destination_uri { get; set; }
		public WebKit.NetworkRequest network_request { get; construct; }
		public WebKit.NetworkResponse network_response { get; construct; }
		public double progress { get; }
		public WebKit.DownloadStatus status { get; }
		public string suggested_filename { get; }
		public uint64 total_size { get; }
		public virtual signal bool error (int p0, int p1, string p2);
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class GeolocationPolicyDecision : GLib.Object {
		[CCode (has_construct_function = false)]
		protected GeolocationPolicyDecision ();
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class HitTestResult : GLib.Object {
		[CCode (has_construct_function = false)]
		protected HitTestResult ();
		[NoAccessorMethod]
		public WebKit.HitTestResultContext context { get; construct; }
		[NoAccessorMethod]
		public string image_uri { owned get; construct; }
		[NoAccessorMethod]
		public string link_uri { owned get; construct; }
		[NoAccessorMethod]
		public string media_uri { owned get; construct; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class NetworkRequest : GLib.Object {
		[CCode (has_construct_function = false)]
		public NetworkRequest (string uri);
		public unowned Soup.Message get_message ();
		public unowned string get_uri ();
		public void set_uri (string uri);
		public Soup.Message message { get; construct; }
		public string uri { get; set; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class NetworkResponse : GLib.Object {
		[CCode (has_construct_function = false)]
		public NetworkResponse (string uri);
		public unowned Soup.Message get_message ();
		public unowned string get_uri ();
		public void set_uri (string uri);
		public Soup.Message message { get; construct; }
		public string uri { get; set; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class SecurityOrigin : GLib.Object {
		[CCode (has_construct_function = false)]
		protected SecurityOrigin ();
		public unowned GLib.List<WebKit.WebDatabase> get_all_web_databases ();
		public unowned string get_host ();
		public uint get_port ();
		public unowned string get_protocol ();
		public uint64 get_web_database_quota ();
		public uint64 get_web_database_usage ();
		public void set_web_database_quota (uint64 quota);
		public string host { get; }
		public uint port { get; }
		public string protocol { get; }
		public uint64 web_database_quota { get; set; }
		public uint64 web_database_usage { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class SoupAuthDialog : GLib.Object, Soup.SessionFeature {
		[CCode (has_construct_function = false)]
		protected SoupAuthDialog ();
		public virtual signal unowned Gtk.Widget current_toplevel (Soup.Message message);
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebBackForwardList : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebBackForwardList ();
		public void add_item (WebKit.WebHistoryItem history_item);
		public void clear ();
		public bool contains_item (WebKit.WebHistoryItem history_item);
		public unowned WebKit.WebHistoryItem get_back_item ();
		public int get_back_length ();
		public unowned GLib.List<WebKit.WebHistoryItem> get_back_list_with_limit (int limit);
		public unowned WebKit.WebHistoryItem get_current_item ();
		public unowned WebKit.WebHistoryItem get_forward_item ();
		public int get_forward_length ();
		public unowned GLib.List<WebKit.WebHistoryItem> get_forward_list_with_limit (int limit);
		public int get_limit ();
		public unowned WebKit.WebHistoryItem get_nth_item (int index);
		public void go_back ();
		public void go_forward ();
		public void go_to_item (WebKit.WebHistoryItem history_item);
		public void set_limit (int limit);
		[CCode (has_construct_function = false)]
		public WebBackForwardList.with_web_view (WebKit.WebView web_view);
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebDataSource : GLib.Object {
		[CCode (has_construct_function = false)]
		public WebDataSource ();
		public unowned GLib.StringBuilder get_data ();
		public unowned string get_encoding ();
		public unowned WebKit.NetworkRequest get_initial_request ();
		public unowned WebKit.WebResource get_main_resource ();
		public unowned WebKit.NetworkRequest get_request ();
		public unowned GLib.List<WebKit.WebResource> get_subresources ();
		public unowned string get_unreachable_uri ();
		public unowned WebKit.WebFrame get_web_frame ();
		public bool is_loading ();
		[CCode (has_construct_function = false)]
		public WebDataSource.with_request (WebKit.NetworkRequest request);
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebDatabase : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebDatabase ();
		public unowned string get_display_name ();
		public uint64 get_expected_size ();
		public unowned string get_filename ();
		public unowned string get_name ();
		public unowned WebKit.SecurityOrigin get_security_origin ();
		public uint64 get_size ();
		public void remove ();
		public string display_name { get; }
		public uint64 expected_size { get; }
		public string filename { get; }
		public string name { get; construct; }
		public WebKit.SecurityOrigin security_origin { get; construct; }
		public uint64 size { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebFrame : GLib.Object {
		[CCode (has_construct_function = false)]
		public WebFrame (WebKit.WebView web_view);
		public unowned WebKit.WebFrame find_frame (string name);
		public unowned WebKit.WebDataSource get_data_source ();
		public Gtk.PolicyType get_horizontal_scrollbar_policy ();
		public WebKit.LoadStatus get_load_status ();
		public unowned string get_name ();
		public unowned WebKit.NetworkResponse get_network_response ();
		public unowned WebKit.WebFrame get_parent ();
		public unowned WebKit.WebDataSource get_provisional_data_source ();
		public unowned WebKit.SecurityOrigin get_security_origin ();
		public unowned string get_title ();
		public unowned string get_uri ();
		public Gtk.PolicyType get_vertical_scrollbar_policy ();
		public unowned WebKit.WebView get_web_view ();
		public void load_alternate_string (string content, string base_url, string unreachable_url);
		public void load_request (WebKit.NetworkRequest request);
		public void load_string (string content, string mime_type, string encoding, string base_uri);
		public void load_uri (string uri);
		public void print ();
		public Gtk.PrintOperationResult print_full (Gtk.PrintOperation operation, Gtk.PrintOperationAction action) throws GLib.Error;
		public void reload ();
		public void stop_loading ();
		public Gtk.PolicyType horizontal_scrollbar_policy { get; }
		public WebKit.LoadStatus load_status { get; }
		public string name { get; }
		public string title { get; }
		public string uri { get; }
		public Gtk.PolicyType vertical_scrollbar_policy { get; }
		public virtual signal void cleared ();
		public virtual signal void hovering_over_link (string p0, string p1);
		public virtual signal void load_committed ();
		public virtual signal void load_done (bool p0);
		public virtual signal bool scrollbars_policy_changed ();
		public virtual signal void title_changed (string p0);
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebHistoryItem : GLib.Object {
		[CCode (has_construct_function = false)]
		public WebHistoryItem ();
		public unowned WebKit.WebHistoryItem copy ();
		public unowned string get_alternate_title ();
		public double get_last_visited_time ();
		public unowned string get_original_uri ();
		public unowned string get_title ();
		public unowned string get_uri ();
		public void set_alternate_title (string title);
		[CCode (has_construct_function = false)]
		public WebHistoryItem.with_data (string uri, string title);
		public string alternate_title { get; set; }
		public double last_visited_time { get; }
		public string original_uri { get; }
		public string title { get; }
		public string uri { get; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebInspector : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebInspector ();
		public void close ();
		public unowned string get_inspected_uri ();
		public unowned WebKit.WebView get_web_view ();
		public void inspect_coordinates (double x, double y);
		public void show ();
		public string inspected_uri { get; }
		[NoAccessorMethod]
		public bool javascript_profiling_enabled { get; set; }
		[NoAccessorMethod]
		public bool timeline_profiling_enabled { get; set; }
		public WebKit.WebView web_view { get; }
		public virtual signal bool attach_window ();
		public virtual signal bool close_window ();
		public virtual signal bool detach_window ();
		public virtual signal void finished ();
		public virtual signal unowned WebKit.WebView inspect_web_view (WebKit.WebView p0);
		public virtual signal bool show_window ();
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebNavigationAction : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebNavigationAction ();
		public int get_button ();
		public int get_modifier_state ();
		public unowned string get_original_uri ();
		public WebKit.WebNavigationReason get_reason ();
		public unowned string get_target_frame ();
		public void set_original_uri (string originalUri);
		public void set_reason (WebKit.WebNavigationReason reason);
		public int button { get; construct; }
		public int modifier_state { get; construct; }
		public string original_uri { get; set construct; }
		public WebKit.WebNavigationReason reason { get; set construct; }
		public string target_frame { get; construct; }
	}
	[CCode (cheader_filename = "webkit/webkit.h", type_id = "webkit_web_plugin_get_type ()")]
	public class WebPlugin : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebPlugin ();
		public unowned string get_description ();
		public bool get_enabled ();
		public unowned string get_name ();
		public unowned string get_path ();
		public void set_enabled (bool enabled);
		public bool enabled { get; set; }
	}
	[CCode (cheader_filename = "webkit/webkit.h", type_id = "webkit_web_plugin_database_get_type ()")]
	public class WebPluginDatabase : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebPluginDatabase ();
		public WebKit.WebPlugin get_plugin_for_mimetype (string mime_type);
		public GLib.SList<WebKit.WebPlugin> get_plugins ();
		public void refresh ();
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebPolicyDecision : GLib.Object {
		[CCode (has_construct_function = false)]
		protected WebPolicyDecision ();
		public void download ();
		public void ignore ();
		public void use ();
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebResource : GLib.Object {
		[CCode (has_construct_function = false)]
		public WebResource (string data, ssize_t size, string uri, string mime_type, string encoding, string frame_name);
		public unowned GLib.StringBuilder get_data ();
		public unowned string get_encoding ();
		public unowned string get_frame_name ();
		public unowned string get_mime_type ();
		public unowned string get_uri ();
		public string encoding { get; }
		public string frame_name { get; }
		public string mime_type { get; }
		public string uri { get; construct; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebSettings : GLib.Object {
		[CCode (has_construct_function = false)]
		public WebSettings ();
		public WebKit.WebSettings copy ();
		public unowned string get_user_agent ();
		[NoAccessorMethod]
		public bool auto_load_images { get; set construct; }
		[NoAccessorMethod]
		public bool auto_resize_window { get; set construct; }
		[NoAccessorMethod]
		public bool auto_shrink_images { get; set construct; }
		[NoAccessorMethod]
		public string cursive_font_family { owned get; set construct; }
		[NoAccessorMethod]
		public string default_encoding { owned get; set construct; }
		[NoAccessorMethod]
		public string default_font_family { owned get; set construct; }
		[NoAccessorMethod]
		public int default_font_size { get; set construct; }
		[NoAccessorMethod]
		public int default_monospace_font_size { get; set construct; }
		[NoAccessorMethod]
		public WebKit.EditingBehavior editing_behavior { get; set construct; }
		[NoAccessorMethod]
		public bool enable_caret_browsing { get; set construct; }
		[NoAccessorMethod]
		public bool enable_default_context_menu { get; set construct; }
		[NoAccessorMethod]
		public bool enable_developer_extras { get; set construct; }
		[NoAccessorMethod]
		public bool enable_dom_paste { get; set construct; }
		[NoAccessorMethod]
		public bool enable_file_access_from_file_uris { get; set construct; }
		[NoAccessorMethod]
		public bool enable_html5_database { get; set construct; }
		[NoAccessorMethod]
		public bool enable_html5_local_storage { get; set construct; }
		[NoAccessorMethod]
		public bool enable_java_applet { get; set construct; }
		[NoAccessorMethod]
		public bool enable_offline_web_application_cache { get; set construct; }
		[NoAccessorMethod]
		public bool enable_page_cache { get; set construct; }
		[NoAccessorMethod]
		public bool enable_plugins { get; set construct; }
		[NoAccessorMethod]
		public bool enable_private_browsing { get; set construct; }
		[NoAccessorMethod]
		public bool enable_scripts { get; set construct; }
		[NoAccessorMethod]
		public bool enable_site_specific_quirks { get; set construct; }
		[NoAccessorMethod]
		public bool enable_spatial_navigation { get; set construct; }
		[NoAccessorMethod]
		public bool enable_spell_checking { get; set construct; }
		[NoAccessorMethod]
		public bool enable_universal_access_from_file_uris { get; set construct; }
		[NoAccessorMethod]
		public bool enable_xss_auditor { get; set construct; }
		[NoAccessorMethod]
		public bool enforce_96_dpi { get; set construct; }
		[NoAccessorMethod]
		public string fantasy_font_family { owned get; set construct; }
		[NoAccessorMethod]
		public bool javascript_can_access_clipboard { get; set construct; }
		[NoAccessorMethod]
		public bool javascript_can_open_windows_automatically { get; set construct; }
		[NoAccessorMethod]
		public int minimum_font_size { get; set construct; }
		[NoAccessorMethod]
		public int minimum_logical_font_size { get; set construct; }
		[NoAccessorMethod]
		public string monospace_font_family { owned get; set construct; }
		[NoAccessorMethod]
		public bool print_backgrounds { get; set construct; }
		[NoAccessorMethod]
		public bool resizable_text_areas { get; set construct; }
		[NoAccessorMethod]
		public string sans_serif_font_family { owned get; set construct; }
		[NoAccessorMethod]
		public string serif_font_family { owned get; set construct; }
		[NoAccessorMethod]
		public string spell_checking_languages { owned get; set construct; }
		[NoAccessorMethod]
		public bool tab_key_cycles_through_elements { get; set construct; }
		[NoAccessorMethod]
		public string user_agent { owned get; set construct; }
		[NoAccessorMethod]
		public string user_stylesheet_uri { owned get; set construct; }
		[NoAccessorMethod]
		public float zoom_step { get; set construct; }
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebView : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public WebView ();
		public bool can_copy_clipboard ();
		public bool can_cut_clipboard ();
		public bool can_go_back ();
		public bool can_go_back_or_forward (int steps);
		public bool can_go_forward ();
		public bool can_paste_clipboard ();
		public bool can_redo ();
		public bool can_show_mime_type (string mime_type);
		public bool can_undo ();
		[NoWrapper]
		public virtual unowned string choose_file (WebKit.WebFrame frame, string old_file);
		public void delete_selection ();
		public void execute_script (string script);
		public unowned WebKit.WebBackForwardList get_back_forward_list ();
		public unowned Gtk.TargetList get_copy_target_list ();
		public unowned string get_custom_encoding ();
		public unowned WebKit.DOMDocument get_dom_document ();
		public bool get_editable ();
		public unowned string get_encoding ();
		public unowned WebKit.WebFrame get_focused_frame ();
		public bool get_full_content_zoom ();
		public unowned WebKit.HitTestResult get_hit_test_result (Gdk.EventButton event);
		public unowned string get_icon_uri ();
		public unowned WebKit.WebInspector get_inspector ();
		public WebKit.LoadStatus get_load_status ();
		public unowned WebKit.WebFrame get_main_frame ();
		public unowned Gtk.TargetList get_paste_target_list ();
		public double get_progress ();
		public unowned WebKit.WebSettings get_settings ();
		public unowned string get_title ();
		public bool get_transparent ();
		public unowned string get_uri ();
		public bool get_view_source_mode ();
		public unowned WebKit.WebWindowFeatures get_window_features ();
		public float get_zoom_level ();
		public void go_back ();
		public void go_back_or_forward (int steps);
		public void go_forward ();
		public bool go_to_back_forward_item (WebKit.WebHistoryItem item);
		public bool has_selection ();
		public void load_html_string (string content, string base_uri);
		public void load_request (WebKit.NetworkRequest request);
		public void load_string (string content, string mime_type, string encoding, string base_uri);
		public void load_uri (string uri);
		public uint mark_text_matches (string str, bool case_sensitive, uint limit);
		public void open (string uri);
		public void reload ();
		public void reload_bypass_cache ();
		public bool search_text (string text, bool case_sensitive, bool forward, bool wrap);
		public void set_custom_encoding (string encoding);
		public void set_editable (bool flag);
		public void set_full_content_zoom (bool full_content_zoom);
		public void set_highlight_text_matches (bool highlight);
		public void set_maintains_back_forward_list (bool flag);
		public void set_settings (WebKit.WebSettings settings);
		public void set_transparent (bool flag);
		public void set_view_source_mode (bool view_source_mode);
		public void set_zoom_level (float zoom_level);
		public void stop_loading ();
		public void unmark_text_matches ();
		public void zoom_in ();
		public void zoom_out ();
		public Gtk.TargetList copy_target_list { get; }
		public string custom_encoding { get; set; }
		public bool editable { get; set; }
		public string encoding { get; }
		public bool full_content_zoom { get; set; }
		public string icon_uri { get; }
		[NoAccessorMethod]
		public Gtk.IMContext im_context { owned get; }
		public WebKit.LoadStatus load_status { get; }
		public Gtk.TargetList paste_target_list { get; }
		public double progress { get; }
		public WebKit.WebSettings settings { get; set; }
		public string title { get; }
		public bool transparent { get; set; }
		public string uri { get; }
		[NoAccessorMethod]
		public WebKit.WebInspector web_inspector { owned get; }
		[NoAccessorMethod]
		public WebKit.WebWindowFeatures window_features { owned get; set; }
		public float zoom_level { get; set; }
		public virtual signal bool close_web_view ();
		public virtual signal bool console_message (string message, int line_number, string source_id);
		[HasEmitter]
		public virtual signal void copy_clipboard ();
		public virtual signal unowned Gtk.Widget create_plugin_widget (string p0, string p1, GLib.HashTable p2);
		public virtual signal WebKit.WebView create_web_view (WebKit.WebFrame web_frame);
		[HasEmitter]
		public virtual signal void cut_clipboard ();
		public virtual signal void database_quota_exceeded (GLib.Object p0, GLib.Object p1);
		public virtual signal void document_load_finished (WebKit.WebFrame p0);
		public virtual signal bool download_requested (GLib.Object p0);
		public virtual signal void geolocation_policy_decision_cancelled (WebKit.WebFrame p0);
		public virtual signal bool geolocation_policy_decision_requested (WebKit.WebFrame p0, WebKit.GeolocationPolicyDecision p1);
		public virtual signal void hovering_over_link (string? p0, string p1);
		public virtual signal void icon_loaded (string p0);
		public virtual signal void load_committed (WebKit.WebFrame p0);
		public virtual signal bool load_error (WebKit.WebFrame p0, string p1, void* p2);
		public virtual signal void load_finished (WebKit.WebFrame p0);
		public virtual signal void load_progress_changed (int p0);
		public virtual signal void load_started (WebKit.WebFrame p0);
		public virtual signal bool mime_type_policy_decision_requested (WebKit.WebFrame p0, WebKit.NetworkRequest p1, string p2, WebKit.WebPolicyDecision p3);
		[HasEmitter]
		public virtual signal bool move_cursor (Gtk.MovementStep step, int count);
		public virtual signal bool navigation_policy_decision_requested (WebKit.WebFrame p0, WebKit.NetworkRequest p1, WebKit.WebNavigationAction p2, WebKit.WebPolicyDecision p3);
		public virtual signal WebKit.NavigationResponse navigation_requested (WebKit.WebFrame frame, WebKit.NetworkRequest request);
		public virtual signal bool new_window_policy_decision_requested (WebKit.WebFrame p0, WebKit.NetworkRequest p1, WebKit.WebNavigationAction p2, WebKit.WebPolicyDecision p3);
		[HasEmitter]
		public virtual signal void paste_clipboard ();
		public virtual signal void populate_popup (Gtk.Menu p0);
		public virtual signal bool print_requested (WebKit.WebFrame p0);
		[HasEmitter]
		public virtual signal void redo ();
		public virtual signal void resource_request_starting (WebKit.WebFrame p0, WebKit.WebResource p1, WebKit.NetworkRequest p2, WebKit.NetworkResponse p3);
		public virtual signal bool script_alert (WebKit.WebFrame frame, string alert_message);
		public virtual signal bool script_confirm (WebKit.WebFrame frame, string confirm_message, void* did_confirm);
		public virtual signal bool script_prompt (WebKit.WebFrame frame, string message, string default_value, void* value);
		[HasEmitter]
		public virtual signal void select_all ();
		public virtual signal void selection_changed ();
		public virtual signal void set_scroll_adjustments (Gtk.Adjustment hadjustment, Gtk.Adjustment vadjustment);
		public virtual signal void status_bar_text_changed (string p0);
		public virtual signal void title_changed (WebKit.WebFrame p0, string p1);
		[HasEmitter]
		public virtual signal void undo ();
		public virtual signal bool web_view_ready ();
		public virtual signal void window_object_cleared (WebKit.WebFrame frame, void* context, void* window_object);
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public class WebWindowFeatures : GLib.Object {
		[CCode (has_construct_function = false)]
		public WebWindowFeatures ();
		public bool equal (WebKit.WebWindowFeatures features2);
		[NoAccessorMethod]
		public bool fullscreen { get; set construct; }
		[NoAccessorMethod]
		public int height { get; set construct; }
		[NoAccessorMethod]
		public bool locationbar_visible { get; set construct; }
		[NoAccessorMethod]
		public bool menubar_visible { get; set construct; }
		[NoAccessorMethod]
		public bool scrollbar_visible { get; set construct; }
		[NoAccessorMethod]
		public bool statusbar_visible { get; set construct; }
		[NoAccessorMethod]
		public bool toolbar_visible { get; set construct; }
		[NoAccessorMethod]
		public int width { get; set construct; }
		[NoAccessorMethod]
		public int x { get; set construct; }
		[NoAccessorMethod]
		public int y { get; set construct; }
	}
	[CCode (cprefix = "WEBKIT_CACHE_MODEL_", cheader_filename = "webkit/webkit.h")]
	public enum CacheModel {
		DOCUMENT_VIEWER,
		WEB_BROWSER
	}
	[CCode (cprefix = "WEBKIT_DOWNLOAD_ERROR_", cheader_filename = "webkit/webkit.h")]
	public enum DownloadError {
		CANCELLED_BY_USER,
		DESTINATION,
		NETWORK
	}
	[CCode (cprefix = "WEBKIT_DOWNLOAD_STATUS_", cheader_filename = "webkit/webkit.h")]
	public enum DownloadStatus {
		ERROR,
		CREATED,
		STARTED,
		CANCELLED,
		FINISHED
	}
	[CCode (cprefix = "WEBKIT_EDITING_BEHAVIOR_", cheader_filename = "webkit/webkit.h")]
	public enum EditingBehavior {
		MAC,
		WINDOWS
	}
	[CCode (cprefix = "WEBKIT_HIT_TEST_RESULT_CONTEXT_", cheader_filename = "webkit/webkit.h")]
	[Flags]
	public enum HitTestResultContext {
		DOCUMENT,
		LINK,
		IMAGE,
		MEDIA,
		SELECTION,
		EDITABLE
	}
	[CCode (cprefix = "WEBKIT_LOAD_", cheader_filename = "webkit/webkit.h")]
	public enum LoadStatus {
		PROVISIONAL,
		COMMITTED,
		FINISHED,
		FIRST_VISUALLY_NON_EMPTY_LAYOUT,
		FAILED
	}
	[CCode (cprefix = "WEBKIT_NAVIGATION_RESPONSE_", cheader_filename = "webkit/webkit.h")]
	public enum NavigationResponse {
		ACCEPT,
		IGNORE,
		DOWNLOAD
	}
	[CCode (cprefix = "WEBKIT_NETWORK_ERROR_", cheader_filename = "webkit/webkit.h")]
	public enum NetworkError {
		FAILED,
		TRANSPORT,
		UNKNOWN_PROTOCOL,
		CANCELLED,
		FILE_DOES_NOT_EXIST
	}
	[CCode (cprefix = "WEBKIT_PLUGIN_ERROR_", cheader_filename = "webkit/webkit.h")]
	public enum PluginError {
		FAILED,
		CANNOT_FIND_PLUGIN,
		CANNOT_LOAD_PLUGIN,
		JAVA_UNAVAILABLE,
		CONNECTION_CANCELLED,
		WILL_HANDLE_LOAD
	}
	[CCode (cprefix = "WEBKIT_POLICY_ERROR_", cheader_filename = "webkit/webkit.h")]
	public enum PolicyError {
		FAILED,
		CANNOT_SHOW_MIME_TYPE,
		CANNOT_SHOW_URL,
		FRAME_LOAD_INTERRUPTED_BY_POLICY_CHANGE,
		CANNOT_USE_RESTRICTED_PORT
	}
	[CCode (cprefix = "WEBKIT_WEB_NAVIGATION_REASON_", cheader_filename = "webkit/webkit.h")]
	public enum WebNavigationReason {
		LINK_CLICKED,
		FORM_SUBMITTED,
		BACK_FORWARD,
		RELOAD,
		FORM_RESUBMITTED,
		OTHER
	}
	[CCode (cprefix = "WEBKIT_WEB_VIEW_TARGET_INFO_", cheader_filename = "webkit/webkit.h")]
	public enum WebViewTargetInfo {
		HTML,
		TEXT,
		IMAGE,
		URI_LIST,
		NETSCAPE_URL
	}
	[CCode (cheader_filename = "webkit/webkit.h")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "webkit/webkit.h")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "webkit/webkit.h")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "webkit/webkit.h")]
	public const int USER_AGENT_MAJOR_VERSION;
	[CCode (cheader_filename = "webkit/webkit.h")]
	public const int USER_AGENT_MINOR_VERSION;
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static bool check_version (uint major, uint minor, uint micro);
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static void geolocation_policy_allow (WebKit.GeolocationPolicyDecision decision);
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static void geolocation_policy_deny (WebKit.GeolocationPolicyDecision decision);
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static WebKit.CacheModel get_cache_model ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static unowned Soup.Session get_default_session ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static uint64 get_default_web_database_quota ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static unowned WebKit.FaviconDatabase get_favicon_database ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static unowned WebKit.IconDatabase get_icon_database ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static unowned string get_web_database_directory_path ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static unowned WebKit.WebPluginDatabase get_web_plugin_database ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static uint major_version ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static uint micro_version ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static uint minor_version ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static GLib.Quark network_error_quark ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static GLib.Quark plugin_error_quark ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static GLib.Quark policy_error_quark ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static void remove_all_web_databases ();
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static void set_cache_model (WebKit.CacheModel cache_model);
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static void set_default_web_database_quota (uint64 defaultQuota);
	[CCode (cheader_filename = "webkit/webkit.h")]
	public static void set_web_database_directory_path (string path);
}
