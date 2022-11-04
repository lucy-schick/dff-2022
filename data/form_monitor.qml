<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Forms" version="3.24.3-Tisler">
  <fieldConfiguration>
    <field name="fid">
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
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="false"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pscis_crossing_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="my_crossing_reference">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="crew_members">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="surveyor_1">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="surveyor_2">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="surveyor_3">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="aggregated_crossings_id">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="double" name="Max" value="2147483647"/>
            <Option type="double" name="Min" value="-2147483648"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="double" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="camera_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gps_id">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="moti__chris_culvert_id">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gps_waypoint_number">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="road_name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="road_km_mark">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="road_tenure">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
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
                <Option type="QString" name="Closed Bottom Structure" value="CBS"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Open Bottom Structure" value="OBS"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Other" value="OTHER"/>
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
                <Option type="QString" name="BRIDGE" value="BRIDGE"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="CRTBOX" value="CRTBOX"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="FORD" value="FORD"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="OVAL" value="OVAL"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="PIPEARCH" value="PIPEARCH"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="ROUND" value="ROUND"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="WEIR" value="WEIR"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="WOODBOX" value="WOODBOX"/>
              </Option>
            </Option>
          </Option>
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
    <field name="diameter_or_span_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="length_or_width_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="assessment_comment">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="true"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="habitat_comment">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="true"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="rowid">
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
            <Option type="bool" name="allow_null" value="true"/>
            <Option type="bool" name="calendar_popup" value="false"/>
            <Option type="QString" name="display_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="QString" name="field_format" value="yyyy-MM-dd HH:mm:ss"/>
            <Option type="bool" name="field_iso_format" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_zone">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="double" name="Max" value="11"/>
            <Option type="double" name="Min" value="7"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="double" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="easting">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="northing">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="continuous_embeddedment_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="0"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="average_depth_embededdment_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="resemble_channel_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="0"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="backwatered_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="percentage_backwatered">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="fill_depth_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="outlet_drop_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="outlet_pool_depth_0_01m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="inlet_drop_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="culvert_slope_percent">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="downstream_channel_width_meters">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_slope">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beaver_activity_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="fish_observed_yes_no">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
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
                <Option type="QString" name="Bedrock" value="Bedrock"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Deep Fill" value="Deep Fill"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="Shallow Fill" value="Shallow Fill"/>
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
                <Option type="QString" name="HIGH" value="HIGH"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="LOW" value="LOW"/>
              </Option>
              <Option type="Map">
                <Option type="QString" name="MEDIUM" value="MEDIUM"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_width_ratio">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="culvert_length_score">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="embed_score">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="outlet_drop_score">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="culvert_slope_score">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stream_width_ratio_score">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="final_score">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="barrier_result">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
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
    <field name="source">
      <editWidget type="TextEdit">
        <config>
          <Option/>
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
    <field name="mergin_user">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_corrected">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erosion_issues">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="embankment_fill_issues">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="true"/>
            <Option type="int" name="Max" value="3"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="blockage_issues">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="3"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="condition_rank">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="condition_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="likelihood_flood_event_affecting_culvert">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="consequence_flood_event_affecting_culvert">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="climate_change_flood_risk">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="vulnerability_rank">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="climate_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="traffic_volume">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="10"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="community_access">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="10"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="cost">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="10"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="constructability">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="10"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="fish_bearing">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="10"/>
            <Option type="int" name="Min" value="0"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="environmental_impacts">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="10"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="priority_rank">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="overall_rank">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="priority_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_road">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="QString" name="DefaultRoot" value="@project_folder + '/photos'"/>
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_upstream">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_downstream">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_inlet">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_barrel">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_outlet">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_condition">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_embankment_fill">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_blockage">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra1">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra2">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="1"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra1_tag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra2_tag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="dewatering">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="dewatering_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="dewatering_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="velocity">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="velocity_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="velocity_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="constriction">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="constriction_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="constriction_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="substrate">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="substrate_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="substrate_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="riparian">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="riparian_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="riparian_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="flow_depth">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="flow_depth_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="flow_depth_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stability">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stability_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stability_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="revegetation">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="revegetation_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="revegetation_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="cover">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="cover_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="cover_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="maintenance">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" name="AllowNull" value="false"/>
            <Option type="int" name="Max" value="5"/>
            <Option type="int" name="Min" value="1"/>
            <Option type="int" name="Precision" value="0"/>
            <Option type="int" name="Step" value="1"/>
            <Option type="QString" name="Style" value="SpinBox"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="maintenance_notes">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" name="IsMultiline" value="false"/>
            <Option type="bool" name="UseHtml" value="false"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="maintenance_photo">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" name="DocumentViewer" value="0"/>
            <Option type="int" name="DocumentViewerHeight" value="0"/>
            <Option type="int" name="DocumentViewerWidth" value="0"/>
            <Option type="bool" name="FileWidget" value="true"/>
            <Option type="bool" name="FileWidgetButton" value="true"/>
            <Option type="QString" name="FileWidgetFilter" value=""/>
            <Option type="Map" name="PropertyCollection">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="propertyRootPath">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="@project_home + '/photos'"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
            <Option type="int" name="RelativeStorage" value="1"/>
            <Option type="QString" name="StorageAuthConfigId" value=""/>
            <Option type="int" name="StorageMode" value="0"/>
            <Option type="QString" name="StorageType" value=""/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="uav_flight">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="fish_sampling">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_card_filled">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" name="CheckedState" value="Yes"/>
            <Option type="int" name="TextDisplayMethod" value="1"/>
            <Option type="QString" name="UncheckedState" value="No"/>
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
  <featformsuppress>2</featformsuppress>
  <editorlayout>tablayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorContainer groupBox="0" visibilityExpression="" showLabel="0" visibilityExpressionEnabled="0" name="Overview" columnCount="1" backgroundColor="#ffffff">
      <attributeEditorField index="1" showLabel="1" name="date_time_start"/>
      <attributeEditorField index="2" showLabel="1" name="pscis_crossing_id"/>
      <attributeEditorField index="3" showLabel="1" name="my_crossing_reference"/>
      <attributeEditorField index="-1" showLabel="1" name="mot_culvert_id"/>
      <attributeEditorField index="5" showLabel="1" name="surveyor_1"/>
      <attributeEditorField index="6" showLabel="1" name="surveyor_2"/>
      <attributeEditorField index="7" showLabel="1" name="surveyor_3"/>
      <attributeEditorField index="11" showLabel="1" name="gps_id"/>
      <attributeEditorField index="9" showLabel="1" name="camera_id"/>
      <attributeEditorField index="13" showLabel="1" name="gps_waypoint_number"/>
      <attributeEditorField index="27" showLabel="1" name="utm_zone"/>
      <attributeEditorField index="28" showLabel="1" name="easting"/>
      <attributeEditorField index="29" showLabel="1" name="northing"/>
      <attributeEditorField index="58" showLabel="1" name="utm_corrected"/>
      <attributeEditorField index="14" showLabel="1" name="stream_name"/>
      <attributeEditorField index="15" showLabel="1" name="road_name"/>
      <attributeEditorField index="16" showLabel="1" name="road_km_mark"/>
      <attributeEditorField index="17" showLabel="1" name="road_tenure"/>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" visibilityExpression="" showLabel="0" visibilityExpressionEnabled="0" name="Crossing" columnCount="1" backgroundColor="#ffffff">
      <attributeEditorField index="18" showLabel="1" name="crossing_type"/>
      <attributeEditorField index="19" showLabel="1" name="crossing_subtype"/>
      <attributeEditorField index="21" showLabel="1" name="diameter_or_span_meters"/>
      <attributeEditorField index="22" showLabel="1" name="length_or_width_meters"/>
      <attributeEditorField index="23" showLabel="1" name="assessment_comment"/>
      <attributeEditorField index="24" showLabel="1" name="habitat_comment"/>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" visibilityExpression=" &quot;crossing_type&quot;  =  'CBS' " showLabel="0" visibilityExpressionEnabled="1" name="Stream" columnCount="1" backgroundColor="#ffffff">
      <attributeEditorField index="30" showLabel="1" name="continuous_embeddedment_yes_no"/>
      <attributeEditorContainer groupBox="1" visibilityExpression=" &quot;continuous_embeddedment_yes_no&quot;  = 'Yes'" showLabel="0" visibilityExpressionEnabled="1" name="Embeddedment" columnCount="1">
        <attributeEditorField index="31" showLabel="1" name="average_depth_embededdment_meters"/>
      </attributeEditorContainer>
      <attributeEditorField index="32" showLabel="1" name="resemble_channel_yes_no"/>
      <attributeEditorField index="33" showLabel="1" name="backwatered_yes_no"/>
      <attributeEditorContainer groupBox="1" visibilityExpression=" &quot;backwatered_yes_no&quot;  = 'Yes'" showLabel="0" visibilityExpressionEnabled="1" name="Backwatered" columnCount="1">
        <attributeEditorField index="34" showLabel="1" name="percentage_backwatered"/>
      </attributeEditorContainer>
      <attributeEditorField index="35" showLabel="1" name="fill_depth_meters"/>
      <attributeEditorField index="36" showLabel="1" name="outlet_drop_meters"/>
      <attributeEditorField index="37" showLabel="1" name="outlet_pool_depth_0_01m"/>
      <attributeEditorField index="38" showLabel="1" name="inlet_drop_yes_no"/>
      <attributeEditorField index="39" showLabel="1" name="culvert_slope_percent"/>
      <attributeEditorField index="40" showLabel="1" name="downstream_channel_width_meters"/>
      <attributeEditorField index="41" showLabel="1" name="stream_slope"/>
      <attributeEditorField index="43" showLabel="1" name="fish_observed_yes_no"/>
      <attributeEditorField index="42" showLabel="1" name="beaver_activity_yes_no"/>
      <attributeEditorField index="44" showLabel="1" name="valley_fill"/>
      <attributeEditorField index="45" showLabel="1" name="habitat_value"/>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" visibilityExpression=" &quot;crossing_type&quot;  =  'CBS' " showLabel="0" visibilityExpressionEnabled="1" name="Climate" columnCount="1" backgroundColor="#ffffff">
      <attributeEditorContainer groupBox="1" visibilityExpression="" showLabel="1" visibilityExpressionEnabled="0" name="Condition Risk" columnCount="1">
        <attributeEditorField index="59" showLabel="1" name="erosion_issues"/>
        <attributeEditorField index="60" showLabel="1" name="embankment_fill_issues"/>
        <attributeEditorField index="61" showLabel="1" name="blockage_issues"/>
        <attributeEditorField index="62" showLabel="1" name="condition_rank"/>
        <attributeEditorField index="63" showLabel="1" name="condition_notes"/>
      </attributeEditorContainer>
      <attributeEditorContainer groupBox="1" visibilityExpression="" showLabel="1" visibilityExpressionEnabled="0" name="Climate Risk" columnCount="1">
        <attributeEditorField index="64" showLabel="1" name="likelihood_flood_event_affecting_culvert"/>
        <attributeEditorField index="65" showLabel="1" name="consequence_flood_event_affecting_culvert"/>
        <attributeEditorField index="66" showLabel="1" name="climate_change_flood_risk"/>
        <attributeEditorField index="67" showLabel="1" name="vulnerability_rank"/>
        <attributeEditorField index="68" showLabel="1" name="climate_notes"/>
      </attributeEditorContainer>
      <attributeEditorContainer groupBox="1" visibilityExpression="" showLabel="1" visibilityExpressionEnabled="0" name="Priority" columnCount="1">
        <attributeEditorField index="69" showLabel="1" name="traffic_volume"/>
        <attributeEditorField index="70" showLabel="1" name="community_access"/>
        <attributeEditorField index="71" showLabel="1" name="cost"/>
        <attributeEditorField index="72" showLabel="1" name="constructability"/>
        <attributeEditorField index="73" showLabel="1" name="fish_bearing"/>
        <attributeEditorField index="74" showLabel="1" name="environmental_impacts"/>
        <attributeEditorField index="75" showLabel="1" name="priority_rank"/>
        <attributeEditorField index="76" showLabel="1" name="overall_rank"/>
        <attributeEditorField index="77" showLabel="1" name="priority_notes"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" visibilityExpression="" showLabel="0" visibilityExpressionEnabled="0" name="Photos" columnCount="1" backgroundColor="#ffffff">
      <attributeEditorField index="78" showLabel="1" name="photo_road"/>
      <attributeEditorField index="82" showLabel="1" name="photo_barrel"/>
      <attributeEditorField index="79" showLabel="1" name="photo_upstream"/>
      <attributeEditorField index="81" showLabel="1" name="photo_inlet"/>
      <attributeEditorField index="83" showLabel="1" name="photo_outlet"/>
      <attributeEditorField index="80" showLabel="1" name="photo_downstream"/>
      <attributeEditorField index="84" showLabel="1" name="photo_condition"/>
      <attributeEditorField index="85" showLabel="1" name="photo_embankment_fill"/>
      <attributeEditorField index="86" showLabel="1" name="photo_blockage"/>
      <attributeEditorField index="87" showLabel="1" name="photo_extra1"/>
      <attributeEditorField index="89" showLabel="1" name="photo_extra1_tag"/>
      <attributeEditorField index="88" showLabel="1" name="photo_extra2"/>
      <attributeEditorField index="90" showLabel="1" name="photo_extra2_tag"/>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" visibilityExpression="" showLabel="1" visibilityExpressionEnabled="0" name="Monitoring" columnCount="1">
      <attributeEditorField index="91" showLabel="1" name="dewatering"/>
      <attributeEditorField index="92" showLabel="1" name="dewatering_notes"/>
      <attributeEditorField index="93" showLabel="1" name="dewatering_photo"/>
      <attributeEditorField index="94" showLabel="1" name="velocity"/>
      <attributeEditorField index="95" showLabel="1" name="velocity_notes"/>
      <attributeEditorField index="96" showLabel="1" name="velocity_photo"/>
      <attributeEditorField index="97" showLabel="1" name="constriction"/>
      <attributeEditorField index="98" showLabel="1" name="constriction_notes"/>
      <attributeEditorField index="99" showLabel="1" name="constriction_photo"/>
      <attributeEditorField index="100" showLabel="1" name="substrate"/>
      <attributeEditorField index="101" showLabel="1" name="substrate_notes"/>
      <attributeEditorField index="102" showLabel="1" name="substrate_photo"/>
      <attributeEditorField index="103" showLabel="1" name="riparian"/>
      <attributeEditorField index="104" showLabel="1" name="riparian_notes"/>
      <attributeEditorField index="105" showLabel="1" name="riparian_photo"/>
      <attributeEditorField index="106" showLabel="1" name="flow_depth"/>
      <attributeEditorField index="107" showLabel="1" name="flow_depth_notes"/>
      <attributeEditorField index="108" showLabel="1" name="flow_depth_photo"/>
      <attributeEditorField index="109" showLabel="1" name="stability"/>
      <attributeEditorField index="110" showLabel="1" name="stability_notes"/>
      <attributeEditorField index="111" showLabel="1" name="stability_photo"/>
      <attributeEditorField index="112" showLabel="1" name="revegetation"/>
      <attributeEditorField index="113" showLabel="1" name="revegetation_notes"/>
      <attributeEditorField index="114" showLabel="1" name="revegetation_photo"/>
      <attributeEditorField index="115" showLabel="1" name="cover"/>
      <attributeEditorField index="116" showLabel="1" name="cover_notes"/>
      <attributeEditorField index="117" showLabel="1" name="cover_photo"/>
      <attributeEditorField index="118" showLabel="1" name="maintenance"/>
      <attributeEditorField index="119" showLabel="1" name="maintenance_notes"/>
      <attributeEditorField index="120" showLabel="1" name="maintenance_photo"/>
      <attributeEditorField index="121" showLabel="1" name="uav_flight"/>
      <attributeEditorField index="122" showLabel="1" name="fish_sampling"/>
      <attributeEditorField index="123" showLabel="1" name="site_card_filled"/>
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
    <field editable="0" name="climate_change_flood_risk"/>
    <field editable="1" name="climate_notes"/>
    <field editable="1" name="community_access"/>
    <field editable="1" name="condition"/>
    <field editable="1" name="condition_notes"/>
    <field editable="0" name="condition_rank"/>
    <field editable="1" name="consequence_flood_event_affecting_culvert"/>
    <field editable="1" name="constriction"/>
    <field editable="1" name="constriction_notes"/>
    <field editable="1" name="constriction_photo"/>
    <field editable="1" name="constructability"/>
    <field editable="1" name="continuous_embeddedment_ind"/>
    <field editable="1" name="continuous_embeddedment_yes_no"/>
    <field editable="1" name="corrosion/rust"/>
    <field editable="1" name="corrosion_rust"/>
    <field editable="1" name="cost"/>
    <field editable="1" name="cover"/>
    <field editable="1" name="cover_notes"/>
    <field editable="1" name="cover_photo"/>
    <field editable="1" name="crew_members"/>
    <field editable="1" name="crossing_fix"/>
    <field editable="1" name="crossing_subtype"/>
    <field editable="1" name="crossing_subtype_code"/>
    <field editable="1" name="crossing_type"/>
    <field editable="1" name="crossing_type_code"/>
    <field editable="0" name="culvert_length_score"/>
    <field editable="1" name="culvert_slope"/>
    <field editable="1" name="culvert_slope_percent"/>
    <field editable="0" name="culvert_slope_score"/>
    <field editable="0" name="dam_id"/>
    <field editable="1" name="date"/>
    <field editable="1" name="date_time_start"/>
    <field editable="0" name="dbm_mof_50k_grid"/>
    <field editable="1" name="debris_accumulation"/>
    <field editable="1" name="deforming"/>
    <field editable="1" name="dewatering"/>
    <field editable="1" name="dewatering_notes"/>
    <field editable="1" name="dewatering_photo"/>
    <field editable="1" name="diameter_or_span"/>
    <field editable="1" name="diameter_or_span_meters"/>
    <field editable="1" name="downstream_channel_width"/>
    <field editable="1" name="downstream_channel_width1"/>
    <field editable="1" name="downstream_channel_width2"/>
    <field editable="1" name="downstream_channel_width3"/>
    <field editable="1" name="downstream_channel_width_meters"/>
    <field editable="1" name="easting"/>
    <field editable="1" name="embankment_fill_issues"/>
    <field editable="1" name="embankment_issues"/>
    <field editable="0" name="embed_score"/>
    <field editable="1" name="environmental_impacts"/>
    <field editable="1" name="erosion"/>
    <field editable="1" name="erosion_issues"/>
    <field editable="0" name="external_crossing_reference"/>
    <field editable="1" name="fid"/>
    <field editable="1" name="fill_depth"/>
    <field editable="1" name="fill_depth_meters"/>
    <field editable="0" name="final_score"/>
    <field editable="1" name="fish_bearing"/>
    <field editable="1" name="fish_observed_ind"/>
    <field editable="1" name="fish_observed_yes_no"/>
    <field editable="1" name="fish_sampling"/>
    <field editable="1" name="flooding"/>
    <field editable="1" name="flow_depth"/>
    <field editable="1" name="flow_depth_notes"/>
    <field editable="1" name="flow_depth_photo"/>
    <field editable="1" name="ften_client_name"/>
    <field editable="1" name="ften_client_number"/>
    <field editable="1" name="ften_file_type_description"/>
    <field editable="1" name="ften_forest_file_id"/>
    <field editable="1" name="funding_project_number"/>
    <field editable="1" name="gnis_stream_name"/>
    <field editable="1" name="gps_id"/>
    <field editable="1" name="gps_waypoint_id"/>
    <field editable="1" name="gps_waypoint_number"/>
    <field editable="1" name="gps_wp"/>
    <field editable="1" name="habitat_comment"/>
    <field editable="1" name="habitat_value"/>
    <field editable="1" name="habitat_value_code"/>
    <field editable="1" name="inlet_drop_ind"/>
    <field editable="1" name="inlet_drop_yes_no"/>
    <field editable="1" name="lat"/>
    <field editable="1" name="length_or_width"/>
    <field editable="1" name="length_or_width_meters"/>
    <field editable="1" name="likelihood_flood_event_affecting_culvert"/>
    <field editable="1" name="linear_feature_id"/>
    <field editable="1" name="lon"/>
    <field editable="1" name="maintenance"/>
    <field editable="1" name="maintenance_notes"/>
    <field editable="1" name="maintenance_photo"/>
    <field editable="1" name="mergin_user"/>
    <field editable="1" name="modelled_crossing_id"/>
    <field editable="1" name="mot_culvert_id"/>
    <field editable="1" name="moti__chris_culvert_id"/>
    <field editable="1" name="my_crossing_reference"/>
    <field editable="1" name="northing"/>
    <field editable="0" name="observedspp_upstr"/>
    <field editable="1" name="outlet_drop"/>
    <field editable="1" name="outlet_drop_meters"/>
    <field editable="0" name="outlet_drop_score"/>
    <field editable="1" name="outlet_pool_depth"/>
    <field editable="1" name="outlet_pool_depth_0_01m"/>
    <field editable="0" name="overall_rank"/>
    <field editable="1" name="percentage_backwatered"/>
    <field editable="1" name="photo"/>
    <field editable="1" name="photo_additional_notes"/>
    <field editable="1" name="photo_barrel"/>
    <field editable="1" name="photo_blockage"/>
    <field editable="1" name="photo_condition"/>
    <field editable="1" name="photo_downstream"/>
    <field editable="1" name="photo_embankment"/>
    <field editable="1" name="photo_embankment_fill"/>
    <field editable="1" name="photo_extra1"/>
    <field editable="1" name="photo_extra1_tag"/>
    <field editable="1" name="photo_extra2"/>
    <field editable="1" name="photo_extra2_tag"/>
    <field editable="1" name="photo_inlet"/>
    <field editable="1" name="photo_outlet"/>
    <field editable="1" name="photo_road"/>
    <field editable="1" name="photo_upstream"/>
    <field editable="1" name="piping_leakage"/>
    <field editable="1" name="priority_notes"/>
    <field editable="0" name="priority_rank"/>
    <field editable="1" name="pscis_crossing_id"/>
    <field editable="0" name="pscis_status"/>
    <field editable="1" name="rail_owner_name"/>
    <field editable="1" name="recommended_diameter_or_span_meters"/>
    <field editable="1" name="resemble_channel_ind"/>
    <field editable="1" name="resemble_channel_yes_no"/>
    <field editable="1" name="revegetation"/>
    <field editable="1" name="revegetation_notes"/>
    <field editable="1" name="revegetation_photo"/>
    <field editable="1" name="riparian"/>
    <field editable="1" name="riparian_notes"/>
    <field editable="1" name="riparian_photo"/>
    <field editable="1" name="road_km_mark"/>
    <field editable="1" name="road_name"/>
    <field editable="1" name="road_tenure"/>
    <field editable="1" name="rowid"/>
    <field editable="1" name="site_card_filled"/>
    <field editable="1" name="site_id"/>
    <field editable="1" name="source"/>
    <field editable="1" name="stability"/>
    <field editable="1" name="stability_notes"/>
    <field editable="1" name="stability_photo"/>
    <field editable="1" name="stream_crossing_id"/>
    <field editable="1" name="stream_name"/>
    <field editable="0" name="stream_order"/>
    <field editable="1" name="stream_slope"/>
    <field editable="0" name="stream_width_ratio"/>
    <field editable="0" name="stream_width_ratio_score"/>
    <field editable="1" name="substrate"/>
    <field editable="1" name="substrate_notes"/>
    <field editable="1" name="substrate_photo"/>
    <field editable="0" name="surveyor"/>
    <field editable="1" name="surveyor_1"/>
    <field editable="1" name="surveyor_2"/>
    <field editable="1" name="surveyor_3"/>
    <field editable="1" name="surveyor_camera"/>
    <field editable="1" name="surveyor_gps"/>
    <field editable="1" name="test"/>
    <field editable="1" name="time_start"/>
    <field editable="1" name="traffic_volume"/>
    <field editable="1" name="transport_line_structured_name_1"/>
    <field editable="1" name="uav_flight"/>
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
    <field editable="1" name="velocity"/>
    <field editable="1" name="velocity_notes"/>
    <field editable="1" name="velocity_photo"/>
    <field editable="0" name="vulnerability_rank"/>
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
    <field labelOnTop="0" name="climate_change_flood_risk"/>
    <field labelOnTop="0" name="climate_notes"/>
    <field labelOnTop="0" name="community_access"/>
    <field labelOnTop="0" name="condition"/>
    <field labelOnTop="0" name="condition_notes"/>
    <field labelOnTop="0" name="condition_rank"/>
    <field labelOnTop="0" name="consequence_flood_event_affecting_culvert"/>
    <field labelOnTop="0" name="constriction"/>
    <field labelOnTop="0" name="constriction_notes"/>
    <field labelOnTop="0" name="constriction_photo"/>
    <field labelOnTop="0" name="constructability"/>
    <field labelOnTop="0" name="continuous_embeddedment_ind"/>
    <field labelOnTop="0" name="continuous_embeddedment_yes_no"/>
    <field labelOnTop="0" name="corrosion/rust"/>
    <field labelOnTop="0" name="corrosion_rust"/>
    <field labelOnTop="0" name="cost"/>
    <field labelOnTop="0" name="cover"/>
    <field labelOnTop="0" name="cover_notes"/>
    <field labelOnTop="0" name="cover_photo"/>
    <field labelOnTop="0" name="crew_members"/>
    <field labelOnTop="0" name="crossing_fix"/>
    <field labelOnTop="0" name="crossing_subtype"/>
    <field labelOnTop="0" name="crossing_subtype_code"/>
    <field labelOnTop="0" name="crossing_type"/>
    <field labelOnTop="0" name="crossing_type_code"/>
    <field labelOnTop="0" name="culvert_length_score"/>
    <field labelOnTop="0" name="culvert_slope"/>
    <field labelOnTop="0" name="culvert_slope_percent"/>
    <field labelOnTop="0" name="culvert_slope_score"/>
    <field labelOnTop="0" name="dam_id"/>
    <field labelOnTop="0" name="date"/>
    <field labelOnTop="0" name="date_time_start"/>
    <field labelOnTop="0" name="dbm_mof_50k_grid"/>
    <field labelOnTop="0" name="debris_accumulation"/>
    <field labelOnTop="0" name="deforming"/>
    <field labelOnTop="0" name="dewatering"/>
    <field labelOnTop="0" name="dewatering_notes"/>
    <field labelOnTop="0" name="dewatering_photo"/>
    <field labelOnTop="0" name="diameter_or_span"/>
    <field labelOnTop="0" name="diameter_or_span_meters"/>
    <field labelOnTop="0" name="downstream_channel_width"/>
    <field labelOnTop="0" name="downstream_channel_width1"/>
    <field labelOnTop="0" name="downstream_channel_width2"/>
    <field labelOnTop="0" name="downstream_channel_width3"/>
    <field labelOnTop="0" name="downstream_channel_width_meters"/>
    <field labelOnTop="0" name="easting"/>
    <field labelOnTop="0" name="embankment_fill_issues"/>
    <field labelOnTop="0" name="embankment_issues"/>
    <field labelOnTop="0" name="embed_score"/>
    <field labelOnTop="0" name="environmental_impacts"/>
    <field labelOnTop="0" name="erosion"/>
    <field labelOnTop="0" name="erosion_issues"/>
    <field labelOnTop="0" name="external_crossing_reference"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="fill_depth"/>
    <field labelOnTop="0" name="fill_depth_meters"/>
    <field labelOnTop="0" name="final_score"/>
    <field labelOnTop="0" name="fish_bearing"/>
    <field labelOnTop="0" name="fish_observed_ind"/>
    <field labelOnTop="0" name="fish_observed_yes_no"/>
    <field labelOnTop="0" name="fish_sampling"/>
    <field labelOnTop="0" name="flooding"/>
    <field labelOnTop="0" name="flow_depth"/>
    <field labelOnTop="0" name="flow_depth_notes"/>
    <field labelOnTop="0" name="flow_depth_photo"/>
    <field labelOnTop="0" name="ften_client_name"/>
    <field labelOnTop="0" name="ften_client_number"/>
    <field labelOnTop="0" name="ften_file_type_description"/>
    <field labelOnTop="0" name="ften_forest_file_id"/>
    <field labelOnTop="0" name="funding_project_number"/>
    <field labelOnTop="0" name="gnis_stream_name"/>
    <field labelOnTop="0" name="gps_id"/>
    <field labelOnTop="0" name="gps_waypoint_id"/>
    <field labelOnTop="0" name="gps_waypoint_number"/>
    <field labelOnTop="0" name="gps_wp"/>
    <field labelOnTop="0" name="habitat_comment"/>
    <field labelOnTop="0" name="habitat_value"/>
    <field labelOnTop="0" name="habitat_value_code"/>
    <field labelOnTop="0" name="inlet_drop_ind"/>
    <field labelOnTop="0" name="inlet_drop_yes_no"/>
    <field labelOnTop="0" name="lat"/>
    <field labelOnTop="0" name="length_or_width"/>
    <field labelOnTop="0" name="length_or_width_meters"/>
    <field labelOnTop="0" name="likelihood_flood_event_affecting_culvert"/>
    <field labelOnTop="0" name="linear_feature_id"/>
    <field labelOnTop="0" name="lon"/>
    <field labelOnTop="0" name="maintenance"/>
    <field labelOnTop="0" name="maintenance_notes"/>
    <field labelOnTop="0" name="maintenance_photo"/>
    <field labelOnTop="0" name="mergin_user"/>
    <field labelOnTop="0" name="modelled_crossing_id"/>
    <field labelOnTop="0" name="mot_culvert_id"/>
    <field labelOnTop="0" name="moti__chris_culvert_id"/>
    <field labelOnTop="0" name="my_crossing_reference"/>
    <field labelOnTop="0" name="northing"/>
    <field labelOnTop="0" name="observedspp_upstr"/>
    <field labelOnTop="0" name="outlet_drop"/>
    <field labelOnTop="0" name="outlet_drop_meters"/>
    <field labelOnTop="0" name="outlet_drop_score"/>
    <field labelOnTop="0" name="outlet_pool_depth"/>
    <field labelOnTop="0" name="outlet_pool_depth_0_01m"/>
    <field labelOnTop="0" name="overall_rank"/>
    <field labelOnTop="0" name="percentage_backwatered"/>
    <field labelOnTop="0" name="photo"/>
    <field labelOnTop="0" name="photo_additional_notes"/>
    <field labelOnTop="0" name="photo_barrel"/>
    <field labelOnTop="0" name="photo_blockage"/>
    <field labelOnTop="0" name="photo_condition"/>
    <field labelOnTop="0" name="photo_downstream"/>
    <field labelOnTop="0" name="photo_embankment"/>
    <field labelOnTop="0" name="photo_embankment_fill"/>
    <field labelOnTop="0" name="photo_extra1"/>
    <field labelOnTop="0" name="photo_extra1_tag"/>
    <field labelOnTop="0" name="photo_extra2"/>
    <field labelOnTop="0" name="photo_extra2_tag"/>
    <field labelOnTop="0" name="photo_inlet"/>
    <field labelOnTop="0" name="photo_outlet"/>
    <field labelOnTop="0" name="photo_road"/>
    <field labelOnTop="0" name="photo_upstream"/>
    <field labelOnTop="0" name="piping_leakage"/>
    <field labelOnTop="0" name="priority_notes"/>
    <field labelOnTop="0" name="priority_rank"/>
    <field labelOnTop="0" name="pscis_crossing_id"/>
    <field labelOnTop="0" name="pscis_status"/>
    <field labelOnTop="0" name="rail_owner_name"/>
    <field labelOnTop="0" name="recommended_diameter_or_span_meters"/>
    <field labelOnTop="0" name="resemble_channel_ind"/>
    <field labelOnTop="0" name="resemble_channel_yes_no"/>
    <field labelOnTop="0" name="revegetation"/>
    <field labelOnTop="0" name="revegetation_notes"/>
    <field labelOnTop="0" name="revegetation_photo"/>
    <field labelOnTop="0" name="riparian"/>
    <field labelOnTop="0" name="riparian_notes"/>
    <field labelOnTop="0" name="riparian_photo"/>
    <field labelOnTop="0" name="road_km_mark"/>
    <field labelOnTop="0" name="road_name"/>
    <field labelOnTop="0" name="road_tenure"/>
    <field labelOnTop="0" name="rowid"/>
    <field labelOnTop="0" name="site_card_filled"/>
    <field labelOnTop="0" name="site_id"/>
    <field labelOnTop="0" name="source"/>
    <field labelOnTop="0" name="stability"/>
    <field labelOnTop="0" name="stability_notes"/>
    <field labelOnTop="0" name="stability_photo"/>
    <field labelOnTop="0" name="stream_crossing_id"/>
    <field labelOnTop="0" name="stream_name"/>
    <field labelOnTop="0" name="stream_order"/>
    <field labelOnTop="0" name="stream_slope"/>
    <field labelOnTop="0" name="stream_width_ratio"/>
    <field labelOnTop="0" name="stream_width_ratio_score"/>
    <field labelOnTop="0" name="substrate"/>
    <field labelOnTop="0" name="substrate_notes"/>
    <field labelOnTop="0" name="substrate_photo"/>
    <field labelOnTop="0" name="surveyor"/>
    <field labelOnTop="0" name="surveyor_1"/>
    <field labelOnTop="0" name="surveyor_2"/>
    <field labelOnTop="0" name="surveyor_3"/>
    <field labelOnTop="0" name="surveyor_camera"/>
    <field labelOnTop="0" name="surveyor_gps"/>
    <field labelOnTop="0" name="test"/>
    <field labelOnTop="0" name="time_start"/>
    <field labelOnTop="0" name="traffic_volume"/>
    <field labelOnTop="0" name="transport_line_structured_name_1"/>
    <field labelOnTop="0" name="uav_flight"/>
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
    <field labelOnTop="0" name="velocity"/>
    <field labelOnTop="0" name="velocity_notes"/>
    <field labelOnTop="0" name="velocity_photo"/>
    <field labelOnTop="0" name="vulnerability_rank"/>
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
    <field reuseLastValue="0" name="climate_change_flood_risk"/>
    <field reuseLastValue="0" name="climate_notes"/>
    <field reuseLastValue="0" name="community_access"/>
    <field reuseLastValue="0" name="condition"/>
    <field reuseLastValue="0" name="condition_notes"/>
    <field reuseLastValue="0" name="condition_rank"/>
    <field reuseLastValue="0" name="consequence_flood_event_affecting_culvert"/>
    <field reuseLastValue="0" name="constriction"/>
    <field reuseLastValue="0" name="constriction_notes"/>
    <field reuseLastValue="0" name="constriction_photo"/>
    <field reuseLastValue="0" name="constructability"/>
    <field reuseLastValue="0" name="continuous_embeddedment_ind"/>
    <field reuseLastValue="0" name="continuous_embeddedment_yes_no"/>
    <field reuseLastValue="0" name="corrosion/rust"/>
    <field reuseLastValue="0" name="corrosion_rust"/>
    <field reuseLastValue="0" name="cost"/>
    <field reuseLastValue="0" name="cover"/>
    <field reuseLastValue="0" name="cover_notes"/>
    <field reuseLastValue="0" name="cover_photo"/>
    <field reuseLastValue="1" name="crew_members"/>
    <field reuseLastValue="0" name="crossing_fix"/>
    <field reuseLastValue="0" name="crossing_subtype"/>
    <field reuseLastValue="0" name="crossing_subtype_code"/>
    <field reuseLastValue="0" name="crossing_type"/>
    <field reuseLastValue="0" name="crossing_type_code"/>
    <field reuseLastValue="0" name="culvert_length_score"/>
    <field reuseLastValue="0" name="culvert_slope"/>
    <field reuseLastValue="0" name="culvert_slope_percent"/>
    <field reuseLastValue="0" name="culvert_slope_score"/>
    <field reuseLastValue="0" name="dam_id"/>
    <field reuseLastValue="0" name="date"/>
    <field reuseLastValue="0" name="date_time_start"/>
    <field reuseLastValue="0" name="dbm_mof_50k_grid"/>
    <field reuseLastValue="0" name="debris_accumulation"/>
    <field reuseLastValue="0" name="deforming"/>
    <field reuseLastValue="0" name="dewatering"/>
    <field reuseLastValue="0" name="dewatering_notes"/>
    <field reuseLastValue="0" name="dewatering_photo"/>
    <field reuseLastValue="0" name="diameter_or_span"/>
    <field reuseLastValue="0" name="diameter_or_span_meters"/>
    <field reuseLastValue="0" name="downstream_channel_width"/>
    <field reuseLastValue="0" name="downstream_channel_width1"/>
    <field reuseLastValue="0" name="downstream_channel_width2"/>
    <field reuseLastValue="0" name="downstream_channel_width3"/>
    <field reuseLastValue="0" name="downstream_channel_width_meters"/>
    <field reuseLastValue="0" name="easting"/>
    <field reuseLastValue="0" name="embankment_fill_issues"/>
    <field reuseLastValue="0" name="embankment_issues"/>
    <field reuseLastValue="0" name="embed_score"/>
    <field reuseLastValue="0" name="environmental_impacts"/>
    <field reuseLastValue="0" name="erosion"/>
    <field reuseLastValue="0" name="erosion_issues"/>
    <field reuseLastValue="0" name="external_crossing_reference"/>
    <field reuseLastValue="0" name="fid"/>
    <field reuseLastValue="0" name="fill_depth"/>
    <field reuseLastValue="0" name="fill_depth_meters"/>
    <field reuseLastValue="0" name="final_score"/>
    <field reuseLastValue="0" name="fish_bearing"/>
    <field reuseLastValue="0" name="fish_observed_ind"/>
    <field reuseLastValue="0" name="fish_observed_yes_no"/>
    <field reuseLastValue="0" name="fish_sampling"/>
    <field reuseLastValue="0" name="flooding"/>
    <field reuseLastValue="0" name="flow_depth"/>
    <field reuseLastValue="0" name="flow_depth_notes"/>
    <field reuseLastValue="0" name="flow_depth_photo"/>
    <field reuseLastValue="0" name="ften_client_name"/>
    <field reuseLastValue="0" name="ften_client_number"/>
    <field reuseLastValue="0" name="ften_file_type_description"/>
    <field reuseLastValue="0" name="ften_forest_file_id"/>
    <field reuseLastValue="0" name="funding_project_number"/>
    <field reuseLastValue="0" name="gnis_stream_name"/>
    <field reuseLastValue="0" name="gps_id"/>
    <field reuseLastValue="0" name="gps_waypoint_id"/>
    <field reuseLastValue="0" name="gps_waypoint_number"/>
    <field reuseLastValue="0" name="gps_wp"/>
    <field reuseLastValue="0" name="habitat_comment"/>
    <field reuseLastValue="0" name="habitat_value"/>
    <field reuseLastValue="0" name="habitat_value_code"/>
    <field reuseLastValue="0" name="inlet_drop_ind"/>
    <field reuseLastValue="0" name="inlet_drop_yes_no"/>
    <field reuseLastValue="0" name="lat"/>
    <field reuseLastValue="0" name="length_or_width"/>
    <field reuseLastValue="0" name="length_or_width_meters"/>
    <field reuseLastValue="0" name="likelihood_flood_event_affecting_culvert"/>
    <field reuseLastValue="0" name="linear_feature_id"/>
    <field reuseLastValue="0" name="lon"/>
    <field reuseLastValue="0" name="maintenance"/>
    <field reuseLastValue="0" name="maintenance_notes"/>
    <field reuseLastValue="0" name="maintenance_photo"/>
    <field reuseLastValue="0" name="mergin_user"/>
    <field reuseLastValue="0" name="modelled_crossing_id"/>
    <field reuseLastValue="0" name="mot_culvert_id"/>
    <field reuseLastValue="0" name="moti__chris_culvert_id"/>
    <field reuseLastValue="0" name="my_crossing_reference"/>
    <field reuseLastValue="0" name="northing"/>
    <field reuseLastValue="0" name="observedspp_upstr"/>
    <field reuseLastValue="0" name="outlet_drop"/>
    <field reuseLastValue="0" name="outlet_drop_meters"/>
    <field reuseLastValue="0" name="outlet_drop_score"/>
    <field reuseLastValue="0" name="outlet_pool_depth"/>
    <field reuseLastValue="0" name="outlet_pool_depth_0_01m"/>
    <field reuseLastValue="0" name="overall_rank"/>
    <field reuseLastValue="0" name="percentage_backwatered"/>
    <field reuseLastValue="0" name="photo"/>
    <field reuseLastValue="0" name="photo_additional_notes"/>
    <field reuseLastValue="0" name="photo_barrel"/>
    <field reuseLastValue="0" name="photo_blockage"/>
    <field reuseLastValue="0" name="photo_condition"/>
    <field reuseLastValue="0" name="photo_downstream"/>
    <field reuseLastValue="0" name="photo_embankment"/>
    <field reuseLastValue="0" name="photo_embankment_fill"/>
    <field reuseLastValue="0" name="photo_extra1"/>
    <field reuseLastValue="0" name="photo_extra1_tag"/>
    <field reuseLastValue="0" name="photo_extra2"/>
    <field reuseLastValue="0" name="photo_extra2_tag"/>
    <field reuseLastValue="0" name="photo_inlet"/>
    <field reuseLastValue="0" name="photo_outlet"/>
    <field reuseLastValue="0" name="photo_road"/>
    <field reuseLastValue="0" name="photo_upstream"/>
    <field reuseLastValue="0" name="piping_leakage"/>
    <field reuseLastValue="0" name="priority_notes"/>
    <field reuseLastValue="0" name="priority_rank"/>
    <field reuseLastValue="0" name="pscis_crossing_id"/>
    <field reuseLastValue="0" name="pscis_status"/>
    <field reuseLastValue="0" name="rail_owner_name"/>
    <field reuseLastValue="0" name="recommended_diameter_or_span_meters"/>
    <field reuseLastValue="0" name="resemble_channel_ind"/>
    <field reuseLastValue="0" name="resemble_channel_yes_no"/>
    <field reuseLastValue="0" name="revegetation"/>
    <field reuseLastValue="0" name="revegetation_notes"/>
    <field reuseLastValue="0" name="revegetation_photo"/>
    <field reuseLastValue="0" name="riparian"/>
    <field reuseLastValue="0" name="riparian_notes"/>
    <field reuseLastValue="0" name="riparian_photo"/>
    <field reuseLastValue="0" name="road_km_mark"/>
    <field reuseLastValue="0" name="road_name"/>
    <field reuseLastValue="0" name="road_tenure"/>
    <field reuseLastValue="0" name="rowid"/>
    <field reuseLastValue="0" name="site_card_filled"/>
    <field reuseLastValue="0" name="site_id"/>
    <field reuseLastValue="0" name="source"/>
    <field reuseLastValue="0" name="stability"/>
    <field reuseLastValue="0" name="stability_notes"/>
    <field reuseLastValue="0" name="stability_photo"/>
    <field reuseLastValue="0" name="stream_crossing_id"/>
    <field reuseLastValue="0" name="stream_name"/>
    <field reuseLastValue="0" name="stream_order"/>
    <field reuseLastValue="0" name="stream_slope"/>
    <field reuseLastValue="0" name="stream_width_ratio"/>
    <field reuseLastValue="0" name="stream_width_ratio_score"/>
    <field reuseLastValue="0" name="substrate"/>
    <field reuseLastValue="0" name="substrate_notes"/>
    <field reuseLastValue="0" name="substrate_photo"/>
    <field reuseLastValue="0" name="surveyor"/>
    <field reuseLastValue="0" name="surveyor_1"/>
    <field reuseLastValue="0" name="surveyor_2"/>
    <field reuseLastValue="0" name="surveyor_3"/>
    <field reuseLastValue="0" name="surveyor_camera"/>
    <field reuseLastValue="0" name="surveyor_gps"/>
    <field reuseLastValue="0" name="test"/>
    <field reuseLastValue="0" name="time_start"/>
    <field reuseLastValue="0" name="traffic_volume"/>
    <field reuseLastValue="0" name="transport_line_structured_name_1"/>
    <field reuseLastValue="0" name="uav_flight"/>
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
    <field reuseLastValue="0" name="velocity"/>
    <field reuseLastValue="0" name="velocity_notes"/>
    <field reuseLastValue="0" name="velocity_photo"/>
    <field reuseLastValue="0" name="vulnerability_rank"/>
    <field reuseLastValue="0" name="watershed_group_code"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <layerGeometryType>0</layerGeometryType>
</qgis>
