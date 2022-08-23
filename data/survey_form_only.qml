<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Forms" version="3.22.3-Białowieża">
  <fieldConfiguration>
    <field name="fid">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="camera_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gps_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gps_waypoint_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pscis_crossing_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="my_crossing_reference">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="crew_members">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_zone">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="double" value="11" name="Max"/>
            <Option type="double" value="7" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="double" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="easting">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="northing">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="road_name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="road_km_mark">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="road_tenure">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="crossing_type">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="CBS" name="CBS"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="OBS" name="OBS"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="OTHER" name="OTHER"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="crossing_subtype">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="BRIDGE" name="BRIDGE"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="CRTBOX" name="CRTBOX"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="FORD" name="FORD"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="OVAL" name="OVAL"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="PIPEARCH" name="PIPEARCH"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ROUND" name="ROUND"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="WEIR" name="WEIR"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="WOODBOX" name="WOODBOX"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="diameter_or_span_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="length_or_width_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="continuous_embeddedment_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="Yes" name="CheckedState"/>
            <Option type="int" value="1" name="TextDisplayMethod"/>
            <Option type="QString" value="No" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="average_depth_embededdment_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resemble_channel_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="Yes" name="CheckedState"/>
            <Option type="int" value="1" name="TextDisplayMethod"/>
            <Option type="QString" value="No" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="backwatered_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="Yes" name="CheckedState"/>
            <Option type="int" value="1" name="TextDisplayMethod"/>
            <Option type="QString" value="No" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="percentage_backwatered">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="fill_depth_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="outlet_drop_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="outlet_pool_depth_0_01m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inlet_drop_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="Yes" name="CheckedState"/>
            <Option type="int" value="1" name="TextDisplayMethod"/>
            <Option type="QString" value="No" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="culvert_slope_percent">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="downstream_channel_width_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_slope">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beaver_activity_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="Yes" name="CheckedState"/>
            <Option type="int" value="1" name="TextDisplayMethod"/>
            <Option type="QString" value="No" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="fish_observed_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="Yes" name="CheckedState"/>
            <Option type="int" value="1" name="TextDisplayMethod"/>
            <Option type="QString" value="No" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="valley_fill">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="BR" name="BR"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="DF" name="DF"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="SF" name="SF"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="habitat_value">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="HIGH" name="HIGH"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="LOW" name="LOW"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="MEDIUM" name="MEDIUM"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_width_ratio">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="barrier_result">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="crossing_fix">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="recommended_diameter_or_span_meters">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="assessment_comment">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="source">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="aggregated_crossings_id">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="2147483647" name="Max"/>
            <Option type="int" value="-2147483648" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="time_start">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date_time_start">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_corrected">
      <editWidget type="CheckBox">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="utm_corrected_easting">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="utm_corrected_northing">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="embankment_issues">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="int" value="3" name="Max"/>
            <Option type="int" value="1" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="blockage_issues">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="int" value="3" name="Max"/>
            <Option type="int" value="1" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="flooding">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="5" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="mergin_user">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erosion">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="5" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="debris_accumulation">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="5" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="deforming">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="5" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="corrosion_rust">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="5" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="piping_leakage">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="5" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_road">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="QString" value="@project_folder + '/photos'" name="DefaultRoot"/>
            <Option type="int" value="1" name="DocumentViewer"/>
            <Option type="int" value="0" name="DocumentViewerHeight"/>
            <Option type="int" value="0" name="DocumentViewerWidth"/>
            <Option type="bool" value="true" name="FileWidget"/>
            <Option type="bool" value="true" name="FileWidgetButton"/>
            <Option type="QString" value="" name="FileWidgetFilter"/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="@project_home + '/photos'" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
            <Option type="int" value="1" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_upstream">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="1" name="DocumentViewer"/>
            <Option type="int" value="0" name="DocumentViewerHeight"/>
            <Option type="int" value="0" name="DocumentViewerWidth"/>
            <Option type="bool" value="true" name="FileWidget"/>
            <Option type="bool" value="true" name="FileWidgetButton"/>
            <Option type="QString" value="" name="FileWidgetFilter"/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="@project_home + '/photos'" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
            <Option type="int" value="1" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_inlet">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="1" name="DocumentViewer"/>
            <Option type="int" value="0" name="DocumentViewerHeight"/>
            <Option type="int" value="0" name="DocumentViewerWidth"/>
            <Option type="bool" value="true" name="FileWidget"/>
            <Option type="bool" value="true" name="FileWidgetButton"/>
            <Option type="QString" value="" name="FileWidgetFilter"/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="@project_home + '/photos'" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
            <Option type="int" value="1" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_downstream">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="1" name="DocumentViewer"/>
            <Option type="int" value="0" name="DocumentViewerHeight"/>
            <Option type="int" value="0" name="DocumentViewerWidth"/>
            <Option type="bool" value="true" name="FileWidget"/>
            <Option type="bool" value="true" name="FileWidgetButton"/>
            <Option type="QString" value="" name="FileWidgetFilter"/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="@project_home + '/photos'" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
            <Option type="int" value="1" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_outlet">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="1" name="DocumentViewer"/>
            <Option type="int" value="0" name="DocumentViewerHeight"/>
            <Option type="int" value="0" name="DocumentViewerWidth"/>
            <Option type="bool" value="true" name="FileWidget"/>
            <Option type="bool" value="true" name="FileWidgetButton"/>
            <Option type="QString" value="" name="FileWidgetFilter"/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="@project_home + '/photos'" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
            <Option type="int" value="1" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_barrel">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="1" name="DocumentViewer"/>
            <Option type="int" value="0" name="DocumentViewerHeight"/>
            <Option type="int" value="0" name="DocumentViewerWidth"/>
            <Option type="bool" value="true" name="FileWidget"/>
            <Option type="bool" value="true" name="FileWidgetButton"/>
            <Option type="QString" value="" name="FileWidgetFilter"/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="@project_home + '/photos'" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
            <Option type="int" value="1" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" name="Location and Overview Information" groupBox="1" visibilityExpression="" backgroundColor="#ffffff" columnCount="1">
      <attributeEditorField showLabel="1" name="crew_members" index="7"/>
      <attributeEditorField showLabel="1" name="date" index="1"/>
      <attributeEditorField showLabel="1" name="date_time_start" index="43"/>
      <attributeEditorField showLabel="1" name="mergin_user" index="50"/>
      <attributeEditorField showLabel="1" name="gps_id" index="3"/>
      <attributeEditorField showLabel="1" name="camera_id" index="2"/>
      <attributeEditorField showLabel="1" name="gps_waypoint_id" index="4"/>
      <attributeEditorField showLabel="1" name="pscis_crossing_id" index="5"/>
      <attributeEditorField showLabel="1" name="my_crossing_reference" index="6"/>
      <attributeEditorField showLabel="1" name="utm_zone" index="8"/>
      <attributeEditorField showLabel="1" name="easting" index="9"/>
      <attributeEditorField showLabel="1" name="northing" index="10"/>
      <attributeEditorField showLabel="1" name="stream_name" index="11"/>
      <attributeEditorField showLabel="1" name="road_name" index="12"/>
      <attributeEditorField showLabel="1" name="road_km_mark" index="13"/>
      <attributeEditorField showLabel="1" name="road_tenure" index="14"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" name="Field Observations and Assessment Measurements" groupBox="1" visibilityExpression="" backgroundColor="#ffffff" columnCount="1">
      <attributeEditorField showLabel="1" name="crossing_type" index="15"/>
      <attributeEditorField showLabel="1" name="crossing_subtype" index="16"/>
      <attributeEditorField showLabel="1" name="diameter_or_span_meters" index="17"/>
      <attributeEditorField showLabel="1" name="length_or_width_meters" index="18"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="1" name="Stream Information" groupBox="1" visibilityExpression=" &quot;crossing_type&quot;  =  'CBS' " backgroundColor="#ffffff" columnCount="1">
      <attributeEditorField showLabel="1" name="continuous_embeddedment_yes_no" index="19"/>
      <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="1" name="Embeddedment" groupBox="1" visibilityExpression=" &quot;continuous_embeddedment_yes_no&quot;  = 'Yes'" columnCount="1">
        <attributeEditorField showLabel="1" name="average_depth_embededdment_meters" index="20"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" name="resemble_channel_yes_no" index="21"/>
      <attributeEditorField showLabel="1" name="backwatered_yes_no" index="22"/>
      <attributeEditorContainer showLabel="0" visibilityExpressionEnabled="1" name="Backwatered" groupBox="1" visibilityExpression=" &quot;backwatered_yes_no&quot;  = 'Yes'" columnCount="1">
        <attributeEditorField showLabel="1" name="percentage_backwatered" index="23"/>
      </attributeEditorContainer>
      <attributeEditorField showLabel="1" name="fill_depth_meters" index="24"/>
      <attributeEditorField showLabel="1" name="outlet_drop_meters" index="25"/>
      <attributeEditorField showLabel="1" name="outlet_pool_depth_0_01m" index="26"/>
      <attributeEditorField showLabel="1" name="inlet_drop_yes_no" index="27"/>
      <attributeEditorField showLabel="1" name="culvert_slope_percent" index="28"/>
      <attributeEditorField showLabel="1" name="downstream_channel_width_meters" index="29"/>
      <attributeEditorField showLabel="1" name="stream_slope" index="30"/>
      <attributeEditorField showLabel="1" name="valley_fill" index="33"/>
      <attributeEditorField showLabel="1" name="habitat_value" index="34"/>
    </attributeEditorContainer>
    <attributeEditorField showLabel="1" name="beaver_activity_yes_no" index="31"/>
    <attributeEditorField showLabel="1" name="fish_observed_yes_no" index="32"/>
    <attributeEditorField showLabel="1" name="assessment_comment" index="39"/>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" name="Climate Risk/Maintenance" groupBox="1" visibilityExpression="" columnCount="1">
      <attributeEditorField showLabel="1" name="embankment_issues" index="47"/>
      <attributeEditorField showLabel="1" name="blockage_issues" index="48"/>
      <attributeEditorField showLabel="1" name="piping_leakage" index="55"/>
      <attributeEditorField showLabel="1" name="flooding" index="49"/>
      <attributeEditorField showLabel="1" name="debris_accumulation" index="52"/>
      <attributeEditorField showLabel="1" name="deforming" index="53"/>
      <attributeEditorField showLabel="1" name="corrosion_rust" index="54"/>
      <attributeEditorField showLabel="1" name="erosion" index="51"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" visibilityExpressionEnabled="0" name="Photos" groupBox="1" visibilityExpression="" backgroundColor="#ffffff" columnCount="1">
      <attributeEditorField showLabel="1" name="photo_road" index="56"/>
      <attributeEditorField showLabel="1" name="photo_barrel" index="61"/>
      <attributeEditorField showLabel="1" name="photo_upstream" index="57"/>
      <attributeEditorField showLabel="1" name="photo_inlet" index="58"/>
      <attributeEditorField showLabel="1" name="photo_outlet" index="60"/>
      <attributeEditorField showLabel="1" name="photo_downstream" index="59"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="aggregated_crossings_id"/>
    <field editable="1" name="assessment_comment"/>
    <field editable="1" name="assessment_date"/>
    <field editable="1" name="average_depth_embededdment"/>
    <field editable="1" name="average_depth_embededdment_meters"/>
    <field editable="1" name="backwatered_ind"/>
    <field editable="1" name="backwatered_yes_no"/>
    <field editable="1" name="barrier_result"/>
    <field editable="0" name="barrier_status"/>
    <field editable="1" name="beaver_activity_ind"/>
    <field editable="1" name="beaver_activity_yes_no"/>
    <field editable="1" name="blockage_issues"/>
    <field editable="1" name="blue_line_key"/>
    <field editable="1" name="camera_id"/>
    <field editable="1" name="continuous_embeddedment_ind"/>
    <field editable="1" name="continuous_embeddedment_yes_no"/>
    <field editable="1" name="corrosion/rust"/>
    <field editable="1" name="corrosion_rust"/>
    <field editable="1" name="crew_members"/>
    <field editable="1" name="crossing_fix"/>
    <field editable="1" name="crossing_subtype"/>
    <field editable="1" name="crossing_subtype_code"/>
    <field editable="1" name="crossing_type"/>
    <field editable="1" name="crossing_type_code"/>
    <field editable="1" name="culvert_slope"/>
    <field editable="1" name="culvert_slope_percent"/>
    <field editable="0" name="dam_id"/>
    <field editable="1" name="date"/>
    <field editable="1" name="date_time_start"/>
    <field editable="0" name="dbm_mof_50k_grid"/>
    <field editable="1" name="debris_accumulation"/>
    <field editable="1" name="deforming"/>
    <field editable="1" name="diameter_or_span"/>
    <field editable="1" name="diameter_or_span_meters"/>
    <field editable="1" name="downstream_channel_width"/>
    <field editable="1" name="downstream_channel_width1"/>
    <field editable="1" name="downstream_channel_width2"/>
    <field editable="1" name="downstream_channel_width3"/>
    <field editable="1" name="downstream_channel_width_meters"/>
    <field editable="1" name="easting"/>
    <field editable="1" name="embankment_issues"/>
    <field editable="1" name="erosion"/>
    <field editable="0" name="external_crossing_reference"/>
    <field editable="1" name="fid"/>
    <field editable="1" name="fill_depth"/>
    <field editable="1" name="fill_depth_meters"/>
    <field editable="1" name="fish_observed_ind"/>
    <field editable="1" name="fish_observed_yes_no"/>
    <field editable="1" name="flooding"/>
    <field editable="1" name="ften_client_name"/>
    <field editable="1" name="ften_client_number"/>
    <field editable="1" name="ften_file_type_description"/>
    <field editable="1" name="ften_forest_file_id"/>
    <field editable="1" name="funding_project_number"/>
    <field editable="1" name="gnis_stream_name"/>
    <field editable="1" name="gps_id"/>
    <field editable="1" name="gps_waypoint_id"/>
    <field editable="1" name="gps_wp"/>
    <field editable="1" name="habitat_value"/>
    <field editable="1" name="habitat_value_code"/>
    <field editable="1" name="inlet_drop_ind"/>
    <field editable="1" name="inlet_drop_yes_no"/>
    <field editable="1" name="lat"/>
    <field editable="1" name="length_or_width"/>
    <field editable="1" name="length_or_width_meters"/>
    <field editable="1" name="linear_feature_id"/>
    <field editable="1" name="lon"/>
    <field editable="1" name="mergin_user"/>
    <field editable="1" name="modelled_crossing_id"/>
    <field editable="1" name="my_crossing_reference"/>
    <field editable="1" name="northing"/>
    <field editable="0" name="observedspp_upstr"/>
    <field editable="1" name="outlet_drop"/>
    <field editable="1" name="outlet_drop_meters"/>
    <field editable="1" name="outlet_pool_depth"/>
    <field editable="1" name="outlet_pool_depth_0_01m"/>
    <field editable="1" name="percentage_backwatered"/>
    <field editable="1" name="photo"/>
    <field editable="1" name="photo_barrel"/>
    <field editable="1" name="photo_downstream"/>
    <field editable="1" name="photo_inlet"/>
    <field editable="1" name="photo_outlet"/>
    <field editable="1" name="photo_road"/>
    <field editable="1" name="photo_upstream"/>
    <field editable="1" name="piping_leakage"/>
    <field editable="1" name="pscis_crossing_id"/>
    <field editable="0" name="pscis_status"/>
    <field editable="1" name="rail_owner_name"/>
    <field editable="1" name="recommended_diameter_or_span_meters"/>
    <field editable="1" name="resemble_channel_ind"/>
    <field editable="1" name="resemble_channel_yes_no"/>
    <field editable="1" name="road_km_mark"/>
    <field editable="1" name="road_name"/>
    <field editable="1" name="road_tenure"/>
    <field editable="1" name="source"/>
    <field editable="1" name="stream_crossing_id"/>
    <field editable="1" name="stream_name"/>
    <field editable="0" name="stream_order"/>
    <field editable="1" name="stream_slope"/>
    <field editable="1" name="stream_width_ratio"/>
    <field editable="0" name="surveyor"/>
    <field editable="1" name="surveyor_camera"/>
    <field editable="1" name="surveyor_gps"/>
    <field editable="1" name="test"/>
    <field editable="1" name="time_start"/>
    <field editable="1" name="transport_line_structured_name_1"/>
    <field editable="0" name="user_barrier_anthropogenic_id"/>
    <field editable="1" name="utm_corrected"/>
    <field editable="1" name="utm_corrected_easting"/>
    <field editable="1" name="utm_corrected_northing"/>
    <field editable="1" name="utm_easting"/>
    <field editable="1" name="utm_easting_pscis"/>
    <field editable="1" name="utm_northing"/>
    <field editable="1" name="utm_northing_pscis"/>
    <field editable="1" name="utm_zone"/>
    <field editable="1" name="valley_fill"/>
    <field editable="1" name="valley_fill_code"/>
    <field editable="0" name="watershed_group_code"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="aggregated_crossings_id"/>
    <field labelOnTop="0" name="assessment_comment"/>
    <field labelOnTop="0" name="assessment_date"/>
    <field labelOnTop="0" name="average_depth_embededdment"/>
    <field labelOnTop="0" name="average_depth_embededdment_meters"/>
    <field labelOnTop="0" name="backwatered_ind"/>
    <field labelOnTop="0" name="backwatered_yes_no"/>
    <field labelOnTop="0" name="barrier_result"/>
    <field labelOnTop="0" name="barrier_status"/>
    <field labelOnTop="0" name="beaver_activity_ind"/>
    <field labelOnTop="0" name="beaver_activity_yes_no"/>
    <field labelOnTop="0" name="blockage_issues"/>
    <field labelOnTop="0" name="blue_line_key"/>
    <field labelOnTop="0" name="camera_id"/>
    <field labelOnTop="0" name="continuous_embeddedment_ind"/>
    <field labelOnTop="0" name="continuous_embeddedment_yes_no"/>
    <field labelOnTop="0" name="corrosion/rust"/>
    <field labelOnTop="0" name="corrosion_rust"/>
    <field labelOnTop="0" name="crew_members"/>
    <field labelOnTop="0" name="crossing_fix"/>
    <field labelOnTop="0" name="crossing_subtype"/>
    <field labelOnTop="0" name="crossing_subtype_code"/>
    <field labelOnTop="0" name="crossing_type"/>
    <field labelOnTop="0" name="crossing_type_code"/>
    <field labelOnTop="0" name="culvert_slope"/>
    <field labelOnTop="0" name="culvert_slope_percent"/>
    <field labelOnTop="0" name="dam_id"/>
    <field labelOnTop="0" name="date"/>
    <field labelOnTop="0" name="date_time_start"/>
    <field labelOnTop="0" name="dbm_mof_50k_grid"/>
    <field labelOnTop="0" name="debris_accumulation"/>
    <field labelOnTop="0" name="deforming"/>
    <field labelOnTop="0" name="diameter_or_span"/>
    <field labelOnTop="0" name="diameter_or_span_meters"/>
    <field labelOnTop="0" name="downstream_channel_width"/>
    <field labelOnTop="0" name="downstream_channel_width1"/>
    <field labelOnTop="0" name="downstream_channel_width2"/>
    <field labelOnTop="0" name="downstream_channel_width3"/>
    <field labelOnTop="0" name="downstream_channel_width_meters"/>
    <field labelOnTop="0" name="easting"/>
    <field labelOnTop="0" name="embankment_issues"/>
    <field labelOnTop="0" name="erosion"/>
    <field labelOnTop="0" name="external_crossing_reference"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="fill_depth"/>
    <field labelOnTop="0" name="fill_depth_meters"/>
    <field labelOnTop="0" name="fish_observed_ind"/>
    <field labelOnTop="0" name="fish_observed_yes_no"/>
    <field labelOnTop="0" name="flooding"/>
    <field labelOnTop="0" name="ften_client_name"/>
    <field labelOnTop="0" name="ften_client_number"/>
    <field labelOnTop="0" name="ften_file_type_description"/>
    <field labelOnTop="0" name="ften_forest_file_id"/>
    <field labelOnTop="0" name="funding_project_number"/>
    <field labelOnTop="0" name="gnis_stream_name"/>
    <field labelOnTop="0" name="gps_id"/>
    <field labelOnTop="0" name="gps_waypoint_id"/>
    <field labelOnTop="0" name="gps_wp"/>
    <field labelOnTop="0" name="habitat_value"/>
    <field labelOnTop="0" name="habitat_value_code"/>
    <field labelOnTop="0" name="inlet_drop_ind"/>
    <field labelOnTop="0" name="inlet_drop_yes_no"/>
    <field labelOnTop="0" name="lat"/>
    <field labelOnTop="0" name="length_or_width"/>
    <field labelOnTop="0" name="length_or_width_meters"/>
    <field labelOnTop="0" name="linear_feature_id"/>
    <field labelOnTop="0" name="lon"/>
    <field labelOnTop="0" name="mergin_user"/>
    <field labelOnTop="0" name="modelled_crossing_id"/>
    <field labelOnTop="0" name="my_crossing_reference"/>
    <field labelOnTop="0" name="northing"/>
    <field labelOnTop="0" name="observedspp_upstr"/>
    <field labelOnTop="0" name="outlet_drop"/>
    <field labelOnTop="0" name="outlet_drop_meters"/>
    <field labelOnTop="0" name="outlet_pool_depth"/>
    <field labelOnTop="0" name="outlet_pool_depth_0_01m"/>
    <field labelOnTop="0" name="percentage_backwatered"/>
    <field labelOnTop="0" name="photo"/>
    <field labelOnTop="0" name="photo_barrel"/>
    <field labelOnTop="0" name="photo_downstream"/>
    <field labelOnTop="0" name="photo_inlet"/>
    <field labelOnTop="0" name="photo_outlet"/>
    <field labelOnTop="0" name="photo_road"/>
    <field labelOnTop="0" name="photo_upstream"/>
    <field labelOnTop="0" name="piping_leakage"/>
    <field labelOnTop="0" name="pscis_crossing_id"/>
    <field labelOnTop="0" name="pscis_status"/>
    <field labelOnTop="0" name="rail_owner_name"/>
    <field labelOnTop="0" name="recommended_diameter_or_span_meters"/>
    <field labelOnTop="0" name="resemble_channel_ind"/>
    <field labelOnTop="0" name="resemble_channel_yes_no"/>
    <field labelOnTop="0" name="road_km_mark"/>
    <field labelOnTop="0" name="road_name"/>
    <field labelOnTop="0" name="road_tenure"/>
    <field labelOnTop="0" name="source"/>
    <field labelOnTop="0" name="stream_crossing_id"/>
    <field labelOnTop="0" name="stream_name"/>
    <field labelOnTop="0" name="stream_order"/>
    <field labelOnTop="0" name="stream_slope"/>
    <field labelOnTop="0" name="stream_width_ratio"/>
    <field labelOnTop="0" name="surveyor"/>
    <field labelOnTop="0" name="surveyor_camera"/>
    <field labelOnTop="0" name="surveyor_gps"/>
    <field labelOnTop="0" name="test"/>
    <field labelOnTop="0" name="time_start"/>
    <field labelOnTop="0" name="transport_line_structured_name_1"/>
    <field labelOnTop="0" name="user_barrier_anthropogenic_id"/>
    <field labelOnTop="0" name="utm_corrected"/>
    <field labelOnTop="0" name="utm_corrected_easting"/>
    <field labelOnTop="0" name="utm_corrected_northing"/>
    <field labelOnTop="0" name="utm_easting"/>
    <field labelOnTop="0" name="utm_easting_pscis"/>
    <field labelOnTop="0" name="utm_northing"/>
    <field labelOnTop="0" name="utm_northing_pscis"/>
    <field labelOnTop="0" name="utm_zone"/>
    <field labelOnTop="0" name="valley_fill"/>
    <field labelOnTop="0" name="valley_fill_code"/>
    <field labelOnTop="0" name="watershed_group_code"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="aggregated_crossings_id"/>
    <field reuseLastValue="0" name="assessment_comment"/>
    <field reuseLastValue="0" name="assessment_date"/>
    <field reuseLastValue="0" name="average_depth_embededdment"/>
    <field reuseLastValue="0" name="average_depth_embededdment_meters"/>
    <field reuseLastValue="0" name="backwatered_ind"/>
    <field reuseLastValue="0" name="backwatered_yes_no"/>
    <field reuseLastValue="0" name="barrier_result"/>
    <field reuseLastValue="0" name="barrier_status"/>
    <field reuseLastValue="0" name="beaver_activity_ind"/>
    <field reuseLastValue="0" name="beaver_activity_yes_no"/>
    <field reuseLastValue="0" name="blockage_issues"/>
    <field reuseLastValue="0" name="blue_line_key"/>
    <field reuseLastValue="0" name="camera_id"/>
    <field reuseLastValue="0" name="continuous_embeddedment_ind"/>
    <field reuseLastValue="0" name="continuous_embeddedment_yes_no"/>
    <field reuseLastValue="0" name="corrosion/rust"/>
    <field reuseLastValue="0" name="corrosion_rust"/>
    <field reuseLastValue="0" name="crew_members"/>
    <field reuseLastValue="0" name="crossing_fix"/>
    <field reuseLastValue="0" name="crossing_subtype"/>
    <field reuseLastValue="0" name="crossing_subtype_code"/>
    <field reuseLastValue="0" name="crossing_type"/>
    <field reuseLastValue="0" name="crossing_type_code"/>
    <field reuseLastValue="0" name="culvert_slope"/>
    <field reuseLastValue="0" name="culvert_slope_percent"/>
    <field reuseLastValue="0" name="dam_id"/>
    <field reuseLastValue="0" name="date"/>
    <field reuseLastValue="0" name="date_time_start"/>
    <field reuseLastValue="0" name="dbm_mof_50k_grid"/>
    <field reuseLastValue="0" name="debris_accumulation"/>
    <field reuseLastValue="0" name="deforming"/>
    <field reuseLastValue="0" name="diameter_or_span"/>
    <field reuseLastValue="0" name="diameter_or_span_meters"/>
    <field reuseLastValue="0" name="downstream_channel_width"/>
    <field reuseLastValue="0" name="downstream_channel_width1"/>
    <field reuseLastValue="0" name="downstream_channel_width2"/>
    <field reuseLastValue="0" name="downstream_channel_width3"/>
    <field reuseLastValue="0" name="downstream_channel_width_meters"/>
    <field reuseLastValue="0" name="easting"/>
    <field reuseLastValue="0" name="embankment_issues"/>
    <field reuseLastValue="0" name="erosion"/>
    <field reuseLastValue="0" name="external_crossing_reference"/>
    <field reuseLastValue="0" name="fid"/>
    <field reuseLastValue="0" name="fill_depth"/>
    <field reuseLastValue="0" name="fill_depth_meters"/>
    <field reuseLastValue="0" name="fish_observed_ind"/>
    <field reuseLastValue="0" name="fish_observed_yes_no"/>
    <field reuseLastValue="0" name="flooding"/>
    <field reuseLastValue="0" name="ften_client_name"/>
    <field reuseLastValue="0" name="ften_client_number"/>
    <field reuseLastValue="0" name="ften_file_type_description"/>
    <field reuseLastValue="0" name="ften_forest_file_id"/>
    <field reuseLastValue="0" name="funding_project_number"/>
    <field reuseLastValue="0" name="gnis_stream_name"/>
    <field reuseLastValue="0" name="gps_id"/>
    <field reuseLastValue="0" name="gps_waypoint_id"/>
    <field reuseLastValue="0" name="gps_wp"/>
    <field reuseLastValue="0" name="habitat_value"/>
    <field reuseLastValue="0" name="habitat_value_code"/>
    <field reuseLastValue="0" name="inlet_drop_ind"/>
    <field reuseLastValue="0" name="inlet_drop_yes_no"/>
    <field reuseLastValue="0" name="lat"/>
    <field reuseLastValue="0" name="length_or_width"/>
    <field reuseLastValue="0" name="length_or_width_meters"/>
    <field reuseLastValue="0" name="linear_feature_id"/>
    <field reuseLastValue="0" name="lon"/>
    <field reuseLastValue="0" name="mergin_user"/>
    <field reuseLastValue="0" name="modelled_crossing_id"/>
    <field reuseLastValue="0" name="my_crossing_reference"/>
    <field reuseLastValue="0" name="northing"/>
    <field reuseLastValue="0" name="observedspp_upstr"/>
    <field reuseLastValue="0" name="outlet_drop"/>
    <field reuseLastValue="0" name="outlet_drop_meters"/>
    <field reuseLastValue="0" name="outlet_pool_depth"/>
    <field reuseLastValue="0" name="outlet_pool_depth_0_01m"/>
    <field reuseLastValue="0" name="percentage_backwatered"/>
    <field reuseLastValue="0" name="photo"/>
    <field reuseLastValue="0" name="photo_barrel"/>
    <field reuseLastValue="0" name="photo_downstream"/>
    <field reuseLastValue="0" name="photo_inlet"/>
    <field reuseLastValue="0" name="photo_outlet"/>
    <field reuseLastValue="0" name="photo_road"/>
    <field reuseLastValue="0" name="photo_upstream"/>
    <field reuseLastValue="0" name="piping_leakage"/>
    <field reuseLastValue="0" name="pscis_crossing_id"/>
    <field reuseLastValue="0" name="pscis_status"/>
    <field reuseLastValue="0" name="rail_owner_name"/>
    <field reuseLastValue="0" name="recommended_diameter_or_span_meters"/>
    <field reuseLastValue="0" name="resemble_channel_ind"/>
    <field reuseLastValue="0" name="resemble_channel_yes_no"/>
    <field reuseLastValue="0" name="road_km_mark"/>
    <field reuseLastValue="0" name="road_name"/>
    <field reuseLastValue="0" name="road_tenure"/>
    <field reuseLastValue="0" name="source"/>
    <field reuseLastValue="0" name="stream_crossing_id"/>
    <field reuseLastValue="0" name="stream_name"/>
    <field reuseLastValue="0" name="stream_order"/>
    <field reuseLastValue="0" name="stream_slope"/>
    <field reuseLastValue="0" name="stream_width_ratio"/>
    <field reuseLastValue="0" name="surveyor"/>
    <field reuseLastValue="0" name="surveyor_camera"/>
    <field reuseLastValue="0" name="surveyor_gps"/>
    <field reuseLastValue="0" name="test"/>
    <field reuseLastValue="0" name="time_start"/>
    <field reuseLastValue="0" name="transport_line_structured_name_1"/>
    <field reuseLastValue="0" name="user_barrier_anthropogenic_id"/>
    <field reuseLastValue="0" name="utm_corrected"/>
    <field reuseLastValue="0" name="utm_corrected_easting"/>
    <field reuseLastValue="0" name="utm_corrected_northing"/>
    <field reuseLastValue="0" name="utm_easting"/>
    <field reuseLastValue="0" name="utm_easting_pscis"/>
    <field reuseLastValue="0" name="utm_northing"/>
    <field reuseLastValue="0" name="utm_northing_pscis"/>
    <field reuseLastValue="0" name="utm_zone"/>
    <field reuseLastValue="0" name="valley_fill"/>
    <field reuseLastValue="0" name="valley_fill_code"/>
    <field reuseLastValue="0" name="watershed_group_code"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <layerGeometryType>0</layerGeometryType>
</qgis>
