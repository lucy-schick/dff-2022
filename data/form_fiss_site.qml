<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.30.0-'s-Hertogenbosch" styleCategories="Forms">
  <fieldConfiguration>
    <field name="fid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="date_time_start">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
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
    <field name="surveyor_1">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="surveyor_2">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="surveyor_3">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
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
    <field name="gazetted_names">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="local_name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="temperature_c">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="double" value="30" name="Max"/>
            <Option type="double" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="double" value="0" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="p_h">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="double" value="14" name="Max"/>
            <Option type="double" value="0" name="Min"/>
            <Option type="int" value="1" name="Precision"/>
            <Option type="double" value="0.1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="conductivity_m_s_cm">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="9999" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="turbidity">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="Lightly Turbid" name="Lightly Turbid"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Moderately Turbid" name="Moderately Turbid"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Turbid" name="Turbid"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="clear" name="clear"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="stage">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="high" name="high"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="low" name="low"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="moderate" name="moderate"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="no_visible_channel">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="No vis channel" name="No Vis. Ch."/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Vis channel" name="visible channel"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="dewatered_dry_int_channel">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="Dewatered" name="dewatering"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Dry/Interm." name="dry/intermittent"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_zone">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="double" value="99" name="Max"/>
            <Option type="double" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="double" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_easting">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="double" value="999999" name="Max"/>
            <Option type="double" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="double" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_northing">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="double" value="9999999" name="Max"/>
            <Option type="double" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="double" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m-channel_width_m_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_2">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m_2">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_2-channel_width_m_2_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_3">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m_3">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_3-channel_width_m_3_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_4">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m_4">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_4-channel_width_m_4_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_5">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m_5">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_5-channel_width_m_5_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_6">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m_6">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_6-channel_width_m_6_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_7">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_width_m_7">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wetted_width_m_7-channel_width_m_7_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_number_1_percent">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_number_1_percent_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_number_2_percent">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_number_2_percent_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_number_4_percent">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gradient_number_4_percent_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_2">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_2_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_3">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_3_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_4">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_4_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_5">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_5_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_6">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_6_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_7">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="residual_pool_depth_m_7_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_1_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_1_m_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_2_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_2_m_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_3_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_3_m_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_4_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bankfull_depth_number_4_m_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bed_material_dominant">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="large rock/bedrock" name="large rock/bedrock"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="gravels" name="gravels"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fines" name="fines"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cobbles" name="cobbles"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="boulders" name="boulders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="anthropogenic" name="anthropogenic"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bed_material_subdominant">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="anthropogenic" name="anthropogenic"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="boulders" name="boulders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cobbles" name="cobbles"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fines" name="fines"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="gravels" name="gravels"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="large rock/bedrock" name="large rock/bedrock"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="comments">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="comments_2">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="habitat_value_rating">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="reference_number">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="reach_number">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="site_number">
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
    <field name="tributaries">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="" name="CheckedState"/>
            <Option type="int" value="0" name="TextDisplayMethod"/>
            <Option type="QString" value="" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="total_cover">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="abundant" name="abundant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="moderate" name="moderate"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="small_woody_debris">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="large_woody_debris">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="boulders">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="undercut_banks">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="deep_pools">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="overhanging_vegetation">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="instream_vegetation">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="dominant" name="dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sub-dominant" name="sub-dominant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="trace" name="trace"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="crown_closure">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="0" name="0"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="1-20%" name="1-20%"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="21-40%" name="21-40%"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="41-70%" name="41-70%"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="71-90%" name="71-90%"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value=">90%" name=">90%"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="functional_lwd">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="abundant" name="abundant"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="few" name="few"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="lwd_distribution">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="clumped" name="clumped"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="evenly distributed" name="evenly distributed"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="not applicable" name="not applicable"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="instream_vegetation_type">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="algae" name="algae"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="mosses" name="mosses"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="vascular plants" name="vascular plants"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="l_bank_shape">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="V-shaped" name="V-shaped"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="overhanging bank" name="overhanging bank"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sloping" name="sloping"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="undercut" name="undercut"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="l_bank_texture_dominant_1">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="anthropogenic" name="anthropogenic"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="boulders" name="boulders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cobbles" name="cobbles"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fines" name="fines"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="gravels" name="gravels"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="large rock/bedrock" name="large rock/bedrock"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="l_bank_texture_dominant_2">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="anthropogenic" name="anthropogenic"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="boulders" name="boulders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cobbles" name="cobbles"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fines" name="fines"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="gravels" name="gravels"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="large rock/bedrock" name="large rock/bedrock"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="l_bank_riparian_vegetation">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="coniferous forest" name="coniferous forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="deciduous forest" name="deciduous forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="grass" name="grass"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="mixed forest" name="mixed forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="shrubs" name="shrubs"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="wetland" name="wetland"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="l_bank_riparian_vegetation_stage">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="initial" name="initial"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="mature forest" name="mature forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="not applicable" name="not applicable"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="pole-sapling" name="pole-sapling"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="shrub" name="shrub"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="young forest" name="young forest"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="r_bank_shape">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="V-shaped" name="V-shaped"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="overhanging bank" name="overhanging bank"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sloping" name="sloping"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="undercut" name="undercut"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="r_bank_texture_dominant_1">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="anthropogenic" name="anthropogenic"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="boulders" name="boulders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cobbles" name="cobbles"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fines" name="fines"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="gravels" name="gravels"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="large rock/bedrock" name="large rock/bedrock"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="r_bank_texture_dominant_2">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="anthropogenic" name="anthropogenic"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="boulders" name="boulders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cobbles" name="cobbles"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fines" name="fines"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="gravels" name="gravels"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="large rock/bedrock" name="large rock/bedrock"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="r_bank_riparian_vegetation">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="coniferous forest" name="coniferous forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="deciduous forest" name="deciduous forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="grass" name="grass"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="mixed forest" name="mixed forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="none" name="none"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="shrubs" name="shrubs"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="wetland" name="wetland"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="r_bank_riparian_vegetation_stage">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="initial" name="initial"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="mature forest" name="mature forest"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="not applicable" name="not applicable"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="pole-sapling" name="pole-sapling"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="shrub" name="shrub"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="young forest" name="young forest"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="d95_cm">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="d_cm">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="morphology">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="cascade-pool" name="cascade-pool"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="large channel" name="large channel"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="riffle-pool" name="riffle-pool"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="step-pool" name="step-pool"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="channel_pattern">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="irregular meanders" name="irregular meanders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="irregular wandering" name="irregular wandering"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="regular meanders" name="regular meanders"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sinuous" name="sinuous"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="straight" name="straight"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="tortuous meanders" name="tortuous meanders"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="coupling">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="Coupled" name="Coupled"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Decoupled" name="Decoupled"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Partially Coupled" name="Partially Coupled"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="confinement">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="confined" name="confined"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="entrenched" name="entrenched"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="frequently confined" name="frequently confined"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="not applicable" name="not applicable"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="occasionally confined" name="occasionally confined"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="unconfined" name="unconfined"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_type">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="LWD Jam" name="LWD Jam"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Subsurface flow" name="Subsurface flow"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="beaver dam" name="beaver dam"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="bridge" name="bridge"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="canyon" name="canyon"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cascade or Chute" name="cascade or Chute"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="conduit" name="conduit"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="crossing (general)" name="crossing (general)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="culvert" name="culvert"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="dam (general)" name="dam (general)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="dewatering" name="dewatering"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ditch/diversion channel" name="ditch/diversion channel"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="enhancement (general unspecified)" name="enhancement (general unspecified)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="erosion/sedimentation" name="erosion/sedimentation"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="falls" name="falls"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fence" name="fence"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fisheries sensitive zone" name="fisheries sensitive zone"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fishway" name="fishway"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ford" name="ford"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="groundwater (field evidence)" name="groundwater (field evidence)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="hatchery" name="hatchery"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="hydro dam" name="hydro dam"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="landslide or bank sloughing" name="landslide or bank sloughing"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="livestock Water Supply" name="livestock Water Supply"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="rock outcrop" name="rock outcrop"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sinkhole" name="sinkhole"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="slide - debris" name="slide - debris"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="slump" name="slump"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="spawning channel" name="spawning channel"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="spring" name="spring"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="tributary" name="tributary"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="velocity barrier" name="velocity barrier"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="wedge" name="wedge"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="&lt;NULL>"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_height_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_length_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gps_waypoint_number">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="site_length">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="int" value="10000" name="Max"/>
            <Option type="int" value="0" name="Min"/>
            <Option type="int" value="0" name="Precision"/>
            <Option type="int" value="1" name="Step"/>
            <Option type="QString" value="SpinBox" name="Style"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_time">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_type_2">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" name="&lt;NULL>"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="LWD Jam" name="LWD Jam"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="Subsurface flow" name="Subsurface flow"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="beaver dam" name="beaver dam"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="bridge" name="bridge"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="canyon" name="canyon"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="cascade or Chute" name="cascade or Chute"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="conduit" name="conduit"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="crossing (general)" name="crossing (general)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="culvert" name="culvert"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="dam (general)" name="dam (general)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="dewatering" name="dewatering"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ditch/diversion channel" name="ditch/diversion channel"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="enhancement (general unspecified)" name="enhancement (general unspecified)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="erosion/sedimentation" name="erosion/sedimentation"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="falls" name="falls"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fence" name="fence"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fisheries sensitive zone" name="fisheries sensitive zone"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="fishway" name="fishway"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ford" name="ford"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="groundwater (field evidence)" name="groundwater (field evidence)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="hatchery" name="hatchery"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="hydro dam" name="hydro dam"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="landslide or bank sloughing" name="landslide or bank sloughing"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="livestock Water Supply" name="livestock Water Supply"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="rock outcrop" name="rock outcrop"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="sinkhole" name="sinkhole"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="slide - debris" name="slide - debris"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="slump" name="slump"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="spawning channel" name="spawning channel"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="spring" name="spring"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="tributary" name="tributary"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="velocity barrier" name="velocity barrier"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="wedge" name="wedge"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_height_2_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_length_2_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_time_2">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_type_3">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="QString" value="" name="Description"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="feature_type" name="Key"/>
            <Option type="QString" value="form_fiss_site_values_202209100809_33de946f_bbda_43aa_a34b_49261257433e" name="Layer"/>
            <Option type="QString" value="form_fiss_site_values_202209100809" name="LayerName"/>
            <Option type="QString" value="ogr" name="LayerProviderName"/>
            <Option type="QString" value="/Users/airvine/Projects/gis/mergin/bcfishpass_skeena_20220823/form_fiss_site_values_202209100809.gpkg|layername=form_fiss_site_values_202209100809" name="LayerSource"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="feature_type" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_height_3_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_length_3_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_time_3">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="false" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_gravel">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="0" name="DocumentViewer"/>
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
    <field name="photo_pool">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="0" name="DocumentViewer"/>
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
    <field name="photo_typical_1">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="0" name="DocumentViewer"/>
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
    <field name="photo_typical_2">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="0" name="DocumentViewer"/>
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
    <field name="photo_extra_1">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="0" name="DocumentViewer"/>
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
            <Option type="int" value="0" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra_1_tag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra_2">
      <editWidget type="ExternalResource">
        <config>
          <Option type="Map">
            <Option type="int" value="0" name="DocumentViewer"/>
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
            <Option type="int" value="0" name="RelativeStorage"/>
            <Option type="QString" value="" name="StorageAuthConfigId"/>
            <Option type="int" value="0" name="StorageMode"/>
            <Option type="QString" value="" name="StorageType"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="photo_extra_2_tag">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_temperature">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="Hydrolab" name="Hydrolab"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="YSI" name="YSI"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="recording meter" name="recording meter"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="thermister" name="thermister"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="thermometer (alcohol)" name="thermometer (alcohol)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="thermometer (mercury)" name="thermometer (mercury)"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_conductivity">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="Hydrolab" name="Hydrolab"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="YSI" name="YSI"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="recording meter" name="recording meter"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="utm_method">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="GPS general" name="GPS general"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="aerial photo" name="aerial photo"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="geographic information system (GIS)" name="geographic information system (GIS)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="map interpretation" name="map interpretation"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_channel_width">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="aerial estimate" name="aerial estimate"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="aerial photo" name="aerial photo"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="geographic information System (GIS)" name="geographic information System (GIS)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ground estimate" name="ground estimate"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="hip-chain" name="hip-chain"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="laser range Finder" name="laser range Finder"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="map interpretation" name="map interpretation"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="metre stick" name="metre stick"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="metre tape" name="metre tape"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="range finder" name="range finder"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="standard range finder" name="standard range finder"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="surveyor's chain" name="surveyor's chain"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_wetted_width">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="invalid" name="map"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_gradient">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="abney type level" name="abney type level"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="clinometer" name="clinometer"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="geographic information system (GIS)" name="geographic information system (GIS)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ground estimate" name="ground estimate"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="map interpretation" name="map interpretation"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="surveying equipment" name="surveying equipment"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_residual_pool_depth">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="metre stick" name="metre stick"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="metre tape" name="metre tape"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_bankfull_depth">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="metre stick" name="metre stick"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="metre tape" name="metre tape"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="method_for_p_h">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="colourimetric (paper indicator)" name="colourimetric (paper indicator)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="pH meter (general)" name="pH meter (general)"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="feature_height_length_method">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option type="List" name="map">
              <Option type="Map">
                <Option type="QString" value="aerial estimate" name="aerial estimate"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="aerial photo" name="aerial photo"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="geographic information System (GIS)" name="geographic information System (GIS)"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="ground estimate" name="ground estimate"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="hip-chain" name="hip-chain"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="laser range Finder" name="laser range Finder"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="map interpretation" name="map interpretation"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="metre stick" name="metre stick"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="metre tape" name="metre tape"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="other" name="other"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="range finder" name="range finder"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="standard range finder" name="standard range finder"/>
              </Option>
              <Option type="Map">
                <Option type="QString" value="surveyor's chain" name="surveyor's chain"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="avg_channel_width_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="avg_wetted_width_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="average_gradient_percent">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="average_residual_pool_depth_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="average_bankfull_depth_m">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
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
    <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
      <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
    </labelStyle>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="GENERAL" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="1" showLabel="1" name="date_time_start">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="2" showLabel="1" name="mergin_user">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="3" showLabel="1" name="surveyor_1">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="4" showLabel="1" name="surveyor_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="5" showLabel="1" name="surveyor_3">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="-1" showLabel="1" name="waterbody_id">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="6" showLabel="1" name="camera_id">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="7" showLabel="1" name="gps_id">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="-1" showLabel="1" name="gps_waypoint_id">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="8" showLabel="1" name="gazetted_names">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="9" showLabel="1" name="local_name">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="17" showLabel="1" name="utm_zone">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="18" showLabel="1" name="utm_easting">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="19" showLabel="1" name="utm_northing">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="WATER" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="10" showLabel="1" name="temperature_c">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="11" showLabel="1" name="p_h">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="12" showLabel="1" name="conductivity_m_s_cm">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="13" showLabel="1" name="turbidity">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="CHANNEL" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="14" showLabel="1" name="stage">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="15" showLabel="1" name="no_visible_channel">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="16" showLabel="1" name="dewatered_dry_int_channel">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorContainer groupBox="1" showLabel="1" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="widths" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
        <attributeEditorField index="20" showLabel="1" name="wetted_width_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="21" showLabel="1" name="channel_width_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="22" showLabel="1" name="wetted_width_m-channel_width_m_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="23" showLabel="1" name="wetted_width_m_2">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="24" showLabel="1" name="channel_width_m_2">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="25" showLabel="1" name="wetted_width_m_2-channel_width_m_2_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="26" showLabel="1" name="wetted_width_m_3">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="27" showLabel="1" name="channel_width_m_3">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="28" showLabel="1" name="wetted_width_m_3-channel_width_m_3_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="29" showLabel="1" name="wetted_width_m_4">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="30" showLabel="1" name="channel_width_m_4">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="31" showLabel="1" name="wetted_width_m_4-channel_width_m_4_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="32" showLabel="1" name="wetted_width_m_5">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="33" showLabel="1" name="channel_width_m_5">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="34" showLabel="1" name="wetted_width_m_5-channel_width_m_5_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="35" showLabel="1" name="wetted_width_m_6">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="36" showLabel="1" name="channel_width_m_6">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="37" showLabel="1" name="wetted_width_m_6-channel_width_m_6_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="38" showLabel="1" name="wetted_width_m_7">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="39" showLabel="1" name="channel_width_m_7">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="40" showLabel="1" name="wetted_width_m_7-channel_width_m_7_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer groupBox="1" showLabel="1" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="gradients" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
        <attributeEditorField index="41" showLabel="1" name="gradient_number_1_percent">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="42" showLabel="1" name="gradient_number_1_percent_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="43" showLabel="1" name="gradient_number_2_percent">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="44" showLabel="1" name="gradient_number_2_percent_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="45" showLabel="1" name="gradient">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="46" showLabel="1" name="gradient_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="47" showLabel="1" name="gradient_number_4_percent">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="48" showLabel="1" name="gradient_number_4_percent_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer groupBox="1" showLabel="1" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="pool depths" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
        <attributeEditorField index="49" showLabel="1" name="residual_pool_depth_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="50" showLabel="1" name="residual_pool_depth_m_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="51" showLabel="1" name="residual_pool_depth_m_2">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="52" showLabel="1" name="residual_pool_depth_m_2_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="53" showLabel="1" name="residual_pool_depth_m_3">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="54" showLabel="1" name="residual_pool_depth_m_3_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="55" showLabel="1" name="residual_pool_depth_m_4">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="56" showLabel="1" name="residual_pool_depth_m_4_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="57" showLabel="1" name="residual_pool_depth_m_5">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="58" showLabel="1" name="residual_pool_depth_m_5_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="59" showLabel="1" name="residual_pool_depth_m_6">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="60" showLabel="1" name="residual_pool_depth_m_6_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="61" showLabel="1" name="residual_pool_depth_m_7">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="62" showLabel="1" name="residual_pool_depth_m_7_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
      <attributeEditorContainer groupBox="1" showLabel="1" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="bankful depths" visibilityExpressionEnabled="0">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
        <attributeEditorField index="63" showLabel="1" name="bankfull_depth_number_1_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="64" showLabel="1" name="bankfull_depth_number_1_m_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="65" showLabel="1" name="bankfull_depth_number_2_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="66" showLabel="1" name="bankfull_depth_number_2_m_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="67" showLabel="1" name="bankfull_depth_number_3_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="68" showLabel="1" name="bankfull_depth_number_3_m_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="69" showLabel="1" name="bankfull_depth_number_4_m">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
        <attributeEditorField index="70" showLabel="1" name="bankfull_depth_number_4_m_time">
          <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
            <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
          </labelStyle>
        </attributeEditorField>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="FEATURES" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="108" showLabel="1" name="feature_type">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="109" showLabel="1" name="feature_height_m">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="110" showLabel="1" name="feature_length_m">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="113" showLabel="1" name="feature_time">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="114" showLabel="1" name="feature_type_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="115" showLabel="1" name="feature_height_2_m">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="116" showLabel="1" name="feature_length_2_m">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="117" showLabel="1" name="feature_time_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="118" showLabel="1" name="feature_type_3">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="119" showLabel="1" name="feature_height_3_m">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="120" showLabel="1" name="feature_length_3_m">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="121" showLabel="1" name="feature_time_3">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="MORPHOLOGY" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="71" showLabel="1" name="bed_material_dominant">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="72" showLabel="1" name="bed_material_subdominant">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="102" showLabel="1" name="d95_cm">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="103" showLabel="1" name="d_cm">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="104" showLabel="1" name="morphology">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="105" showLabel="1" name="channel_pattern">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="106" showLabel="1" name="coupling">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="107" showLabel="1" name="confinement">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="1" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="COVER" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="80" showLabel="1" name="total_cover">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="81" showLabel="1" name="small_woody_debris">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="82" showLabel="1" name="large_woody_debris">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="83" showLabel="1" name="boulders">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="84" showLabel="1" name="undercut_banks">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="85" showLabel="1" name="deep_pools">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="86" showLabel="1" name="overhanging_vegetation">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="87" showLabel="1" name="instream_vegetation">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="88" showLabel="1" name="crown_closure">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="89" showLabel="1" name="functional_lwd">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="90" showLabel="1" name="lwd_distribution">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="91" showLabel="1" name="instream_vegetation_type">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="1" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="BANKS" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="92" showLabel="1" name="l_bank_shape">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="93" showLabel="1" name="l_bank_texture_dominant_1">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="94" showLabel="1" name="l_bank_texture_dominant_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="95" showLabel="1" name="l_bank_riparian_vegetation">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="96" showLabel="1" name="l_bank_riparian_vegetation_stage">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="97" showLabel="1" name="r_bank_shape">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="98" showLabel="1" name="r_bank_texture_dominant_1">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="99" showLabel="1" name="r_bank_texture_dominant_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="100" showLabel="1" name="r_bank_riparian_vegetation">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="101" showLabel="1" name="r_bank_riparian_vegetation_stage">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="HABITAT QUALITY" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="112" showLabel="1" name="site_length">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="73" showLabel="1" name="comments">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="74" showLabel="1" name="comments_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
    <attributeEditorContainer groupBox="0" showLabel="0" columnCount="1" collapsed="0" collapsedExpressionEnabled="0" visibilityExpression="" collapsedExpression="" name="PHOTOS" visibilityExpressionEnabled="0">
      <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
        <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      </labelStyle>
      <attributeEditorField index="122" showLabel="1" name="photo_gravel">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="123" showLabel="1" name="photo_pool">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="124" showLabel="1" name="photo_typical_1">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="125" showLabel="1" name="photo_typical_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="126" showLabel="1" name="photo_extra_1">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="127" showLabel="1" name="photo_extra_1_tag">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="128" showLabel="1" name="photo_extra_2">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
      <attributeEditorField index="129" showLabel="1" name="photo_extra_2_tag">
        <labelStyle overrideLabelColor="0" labelColor="0,0,0,255" overrideLabelFont="0">
          <labelFont bold="0" underline="0" italic="0" strikethrough="0" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
        </labelStyle>
      </attributeEditorField>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="average_bankfull_depth_m"/>
    <field editable="1" name="average_gradient_percent"/>
    <field editable="1" name="average_residual_pool_depth_m"/>
    <field editable="0" name="avg_channel_width_m"/>
    <field editable="1" name="avg_wetted_width_m"/>
    <field editable="1" name="bankfull_depth_number_1_m"/>
    <field editable="1" name="bankfull_depth_number_1_m_time"/>
    <field editable="1" name="bankfull_depth_number_2_m"/>
    <field editable="1" name="bankfull_depth_number_2_m_time"/>
    <field editable="1" name="bankfull_depth_number_3_m"/>
    <field editable="1" name="bankfull_depth_number_3_m_time"/>
    <field editable="1" name="bankfull_depth_number_4_m"/>
    <field editable="1" name="bankfull_depth_number_4_m_time"/>
    <field editable="1" name="bed_material_dominant"/>
    <field editable="1" name="bed_material_subdominant"/>
    <field editable="1" name="boulders"/>
    <field editable="1" name="camera_id"/>
    <field editable="1" name="channel_pattern"/>
    <field editable="1" name="channel_width_m"/>
    <field editable="1" name="channel_width_m_2"/>
    <field editable="1" name="channel_width_m_3"/>
    <field editable="1" name="channel_width_m_4"/>
    <field editable="1" name="channel_width_m_5"/>
    <field editable="1" name="channel_width_m_6"/>
    <field editable="1" name="channel_width_m_7"/>
    <field editable="1" name="comments"/>
    <field editable="1" name="comments_2"/>
    <field editable="1" name="conductivity_m_s_cm"/>
    <field editable="1" name="confinement"/>
    <field editable="1" name="coupling"/>
    <field editable="1" name="crown_closure"/>
    <field editable="1" name="d95_cm"/>
    <field editable="1" name="d_cm"/>
    <field editable="1" name="date_time_start"/>
    <field editable="1" name="deep_pools"/>
    <field editable="1" name="dewatered_dry_int_channel"/>
    <field editable="1" name="feature_height_2_m"/>
    <field editable="1" name="feature_height_3_m"/>
    <field editable="1" name="feature_height_length_method"/>
    <field editable="1" name="feature_height_m"/>
    <field editable="1" name="feature_length_2_m"/>
    <field editable="1" name="feature_length_3_m"/>
    <field editable="1" name="feature_length_m"/>
    <field editable="1" name="feature_time"/>
    <field editable="1" name="feature_time_2"/>
    <field editable="1" name="feature_time_3"/>
    <field editable="1" name="feature_type"/>
    <field editable="1" name="feature_type_2"/>
    <field editable="1" name="feature_type_3"/>
    <field editable="1" name="fid"/>
    <field editable="1" name="functional_lwd"/>
    <field editable="1" name="gazetted_names"/>
    <field editable="1" name="gps_id"/>
    <field editable="1" name="gps_waypoint_id"/>
    <field editable="1" name="gps_waypoint_number"/>
    <field editable="1" name="gradient"/>
    <field editable="1" name="gradient_number_1_percent"/>
    <field editable="1" name="gradient_number_1_percent_time"/>
    <field editable="1" name="gradient_number_2_percent"/>
    <field editable="1" name="gradient_number_2_percent_time"/>
    <field editable="1" name="gradient_number_4_percent"/>
    <field editable="1" name="gradient_number_4_percent_time"/>
    <field editable="1" name="gradient_time"/>
    <field editable="1" name="habitat_value_rating"/>
    <field editable="1" name="instream_vegetation"/>
    <field editable="1" name="instream_vegetation_type"/>
    <field editable="1" name="l_bank_riparian_vegetation"/>
    <field editable="1" name="l_bank_riparian_vegetation_stage"/>
    <field editable="1" name="l_bank_shape"/>
    <field editable="1" name="l_bank_texture_dominant_1"/>
    <field editable="1" name="l_bank_texture_dominant_2"/>
    <field editable="1" name="large_woody_debris"/>
    <field editable="1" name="local_name"/>
    <field editable="1" name="lwd_distribution"/>
    <field editable="1" name="mergin_user"/>
    <field editable="1" name="method_for_bankfull_depth"/>
    <field editable="1" name="method_for_channel_width"/>
    <field editable="1" name="method_for_conductivity"/>
    <field editable="1" name="method_for_gradient"/>
    <field editable="1" name="method_for_p_h"/>
    <field editable="1" name="method_for_residual_pool_depth"/>
    <field editable="1" name="method_for_temperature"/>
    <field editable="1" name="method_for_wetted_width"/>
    <field editable="1" name="morphology"/>
    <field editable="1" name="no_visible_channel"/>
    <field editable="1" name="overhanging_vegetation"/>
    <field editable="1" name="p_h"/>
    <field editable="1" name="photo_extra_1"/>
    <field editable="1" name="photo_extra_1_tag"/>
    <field editable="1" name="photo_extra_2"/>
    <field editable="1" name="photo_extra_2_tag"/>
    <field editable="1" name="photo_gravel"/>
    <field editable="1" name="photo_pool"/>
    <field editable="1" name="photo_typical_1"/>
    <field editable="1" name="photo_typical_2"/>
    <field editable="1" name="r_bank_riparian_vegetation"/>
    <field editable="1" name="r_bank_riparian_vegetation_stage"/>
    <field editable="1" name="r_bank_shape"/>
    <field editable="1" name="r_bank_texture_dominant_1"/>
    <field editable="1" name="r_bank_texture_dominant_2"/>
    <field editable="1" name="reach_number"/>
    <field editable="1" name="reference_number"/>
    <field editable="1" name="residual_pool_depth_m"/>
    <field editable="1" name="residual_pool_depth_m_2"/>
    <field editable="1" name="residual_pool_depth_m_2_time"/>
    <field editable="1" name="residual_pool_depth_m_3"/>
    <field editable="1" name="residual_pool_depth_m_3_time"/>
    <field editable="1" name="residual_pool_depth_m_4"/>
    <field editable="1" name="residual_pool_depth_m_4_time"/>
    <field editable="1" name="residual_pool_depth_m_5"/>
    <field editable="1" name="residual_pool_depth_m_5_time"/>
    <field editable="1" name="residual_pool_depth_m_6"/>
    <field editable="1" name="residual_pool_depth_m_6_time"/>
    <field editable="1" name="residual_pool_depth_m_7"/>
    <field editable="1" name="residual_pool_depth_m_7_time"/>
    <field editable="1" name="residual_pool_depth_m_time"/>
    <field editable="1" name="site_length"/>
    <field editable="1" name="site_number"/>
    <field editable="1" name="small_woody_debris"/>
    <field editable="1" name="stage"/>
    <field editable="1" name="surveyor_1"/>
    <field editable="1" name="surveyor_2"/>
    <field editable="1" name="surveyor_3"/>
    <field editable="1" name="temperature_c"/>
    <field editable="1" name="total_cover"/>
    <field editable="1" name="tributaries"/>
    <field editable="1" name="turbidity"/>
    <field editable="1" name="undercut_banks"/>
    <field editable="1" name="utm_easting"/>
    <field editable="1" name="utm_method"/>
    <field editable="1" name="utm_northing"/>
    <field editable="1" name="utm_zone"/>
    <field editable="1" name="waterbody_id"/>
    <field editable="1" name="wetted_width_m"/>
    <field editable="1" name="wetted_width_m-channel_width_m_time"/>
    <field editable="1" name="wetted_width_m_2"/>
    <field editable="1" name="wetted_width_m_2-channel_width_m_2_time"/>
    <field editable="1" name="wetted_width_m_3"/>
    <field editable="1" name="wetted_width_m_3-channel_width_m_3_time"/>
    <field editable="1" name="wetted_width_m_4"/>
    <field editable="1" name="wetted_width_m_4-channel_width_m_4_time"/>
    <field editable="1" name="wetted_width_m_5"/>
    <field editable="1" name="wetted_width_m_5-channel_width_m_5_time"/>
    <field editable="1" name="wetted_width_m_6"/>
    <field editable="1" name="wetted_width_m_6-channel_width_m_6_time"/>
    <field editable="1" name="wetted_width_m_7"/>
    <field editable="1" name="wetted_width_m_7-channel_width_m_7_time"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="average_bankfull_depth_m"/>
    <field labelOnTop="0" name="average_gradient_percent"/>
    <field labelOnTop="0" name="average_residual_pool_depth_m"/>
    <field labelOnTop="0" name="avg_channel_width_m"/>
    <field labelOnTop="0" name="avg_wetted_width_m"/>
    <field labelOnTop="0" name="bankfull_depth_number_1_m"/>
    <field labelOnTop="0" name="bankfull_depth_number_1_m_time"/>
    <field labelOnTop="0" name="bankfull_depth_number_2_m"/>
    <field labelOnTop="0" name="bankfull_depth_number_2_m_time"/>
    <field labelOnTop="0" name="bankfull_depth_number_3_m"/>
    <field labelOnTop="0" name="bankfull_depth_number_3_m_time"/>
    <field labelOnTop="0" name="bankfull_depth_number_4_m"/>
    <field labelOnTop="0" name="bankfull_depth_number_4_m_time"/>
    <field labelOnTop="0" name="bed_material_dominant"/>
    <field labelOnTop="0" name="bed_material_subdominant"/>
    <field labelOnTop="0" name="boulders"/>
    <field labelOnTop="0" name="camera_id"/>
    <field labelOnTop="0" name="channel_pattern"/>
    <field labelOnTop="0" name="channel_width_m"/>
    <field labelOnTop="0" name="channel_width_m_2"/>
    <field labelOnTop="0" name="channel_width_m_3"/>
    <field labelOnTop="0" name="channel_width_m_4"/>
    <field labelOnTop="0" name="channel_width_m_5"/>
    <field labelOnTop="0" name="channel_width_m_6"/>
    <field labelOnTop="0" name="channel_width_m_7"/>
    <field labelOnTop="0" name="comments"/>
    <field labelOnTop="0" name="comments_2"/>
    <field labelOnTop="0" name="conductivity_m_s_cm"/>
    <field labelOnTop="0" name="confinement"/>
    <field labelOnTop="0" name="coupling"/>
    <field labelOnTop="0" name="crown_closure"/>
    <field labelOnTop="0" name="d95_cm"/>
    <field labelOnTop="0" name="d_cm"/>
    <field labelOnTop="0" name="date_time_start"/>
    <field labelOnTop="0" name="deep_pools"/>
    <field labelOnTop="0" name="dewatered_dry_int_channel"/>
    <field labelOnTop="0" name="feature_height_2_m"/>
    <field labelOnTop="0" name="feature_height_3_m"/>
    <field labelOnTop="0" name="feature_height_length_method"/>
    <field labelOnTop="0" name="feature_height_m"/>
    <field labelOnTop="0" name="feature_length_2_m"/>
    <field labelOnTop="0" name="feature_length_3_m"/>
    <field labelOnTop="0" name="feature_length_m"/>
    <field labelOnTop="0" name="feature_time"/>
    <field labelOnTop="0" name="feature_time_2"/>
    <field labelOnTop="0" name="feature_time_3"/>
    <field labelOnTop="0" name="feature_type"/>
    <field labelOnTop="0" name="feature_type_2"/>
    <field labelOnTop="0" name="feature_type_3"/>
    <field labelOnTop="0" name="fid"/>
    <field labelOnTop="0" name="functional_lwd"/>
    <field labelOnTop="0" name="gazetted_names"/>
    <field labelOnTop="0" name="gps_id"/>
    <field labelOnTop="0" name="gps_waypoint_id"/>
    <field labelOnTop="0" name="gps_waypoint_number"/>
    <field labelOnTop="0" name="gradient"/>
    <field labelOnTop="0" name="gradient_number_1_percent"/>
    <field labelOnTop="0" name="gradient_number_1_percent_time"/>
    <field labelOnTop="0" name="gradient_number_2_percent"/>
    <field labelOnTop="0" name="gradient_number_2_percent_time"/>
    <field labelOnTop="0" name="gradient_number_4_percent"/>
    <field labelOnTop="0" name="gradient_number_4_percent_time"/>
    <field labelOnTop="0" name="gradient_time"/>
    <field labelOnTop="0" name="habitat_value_rating"/>
    <field labelOnTop="0" name="instream_vegetation"/>
    <field labelOnTop="0" name="instream_vegetation_type"/>
    <field labelOnTop="0" name="l_bank_riparian_vegetation"/>
    <field labelOnTop="0" name="l_bank_riparian_vegetation_stage"/>
    <field labelOnTop="0" name="l_bank_shape"/>
    <field labelOnTop="0" name="l_bank_texture_dominant_1"/>
    <field labelOnTop="0" name="l_bank_texture_dominant_2"/>
    <field labelOnTop="0" name="large_woody_debris"/>
    <field labelOnTop="0" name="local_name"/>
    <field labelOnTop="0" name="lwd_distribution"/>
    <field labelOnTop="0" name="mergin_user"/>
    <field labelOnTop="0" name="method_for_bankfull_depth"/>
    <field labelOnTop="0" name="method_for_channel_width"/>
    <field labelOnTop="0" name="method_for_conductivity"/>
    <field labelOnTop="0" name="method_for_gradient"/>
    <field labelOnTop="0" name="method_for_p_h"/>
    <field labelOnTop="0" name="method_for_residual_pool_depth"/>
    <field labelOnTop="0" name="method_for_temperature"/>
    <field labelOnTop="0" name="method_for_wetted_width"/>
    <field labelOnTop="0" name="morphology"/>
    <field labelOnTop="0" name="no_visible_channel"/>
    <field labelOnTop="0" name="overhanging_vegetation"/>
    <field labelOnTop="0" name="p_h"/>
    <field labelOnTop="0" name="photo_extra_1"/>
    <field labelOnTop="0" name="photo_extra_1_tag"/>
    <field labelOnTop="0" name="photo_extra_2"/>
    <field labelOnTop="0" name="photo_extra_2_tag"/>
    <field labelOnTop="0" name="photo_gravel"/>
    <field labelOnTop="0" name="photo_pool"/>
    <field labelOnTop="0" name="photo_typical_1"/>
    <field labelOnTop="0" name="photo_typical_2"/>
    <field labelOnTop="0" name="r_bank_riparian_vegetation"/>
    <field labelOnTop="0" name="r_bank_riparian_vegetation_stage"/>
    <field labelOnTop="0" name="r_bank_shape"/>
    <field labelOnTop="0" name="r_bank_texture_dominant_1"/>
    <field labelOnTop="0" name="r_bank_texture_dominant_2"/>
    <field labelOnTop="0" name="reach_number"/>
    <field labelOnTop="0" name="reference_number"/>
    <field labelOnTop="0" name="residual_pool_depth_m"/>
    <field labelOnTop="0" name="residual_pool_depth_m_2"/>
    <field labelOnTop="0" name="residual_pool_depth_m_2_time"/>
    <field labelOnTop="0" name="residual_pool_depth_m_3"/>
    <field labelOnTop="0" name="residual_pool_depth_m_3_time"/>
    <field labelOnTop="0" name="residual_pool_depth_m_4"/>
    <field labelOnTop="0" name="residual_pool_depth_m_4_time"/>
    <field labelOnTop="0" name="residual_pool_depth_m_5"/>
    <field labelOnTop="0" name="residual_pool_depth_m_5_time"/>
    <field labelOnTop="0" name="residual_pool_depth_m_6"/>
    <field labelOnTop="0" name="residual_pool_depth_m_6_time"/>
    <field labelOnTop="0" name="residual_pool_depth_m_7"/>
    <field labelOnTop="0" name="residual_pool_depth_m_7_time"/>
    <field labelOnTop="0" name="residual_pool_depth_m_time"/>
    <field labelOnTop="0" name="site_length"/>
    <field labelOnTop="0" name="site_number"/>
    <field labelOnTop="0" name="small_woody_debris"/>
    <field labelOnTop="0" name="stage"/>
    <field labelOnTop="0" name="surveyor_1"/>
    <field labelOnTop="0" name="surveyor_2"/>
    <field labelOnTop="0" name="surveyor_3"/>
    <field labelOnTop="0" name="temperature_c"/>
    <field labelOnTop="0" name="total_cover"/>
    <field labelOnTop="0" name="tributaries"/>
    <field labelOnTop="0" name="turbidity"/>
    <field labelOnTop="0" name="undercut_banks"/>
    <field labelOnTop="0" name="utm_easting"/>
    <field labelOnTop="0" name="utm_method"/>
    <field labelOnTop="0" name="utm_northing"/>
    <field labelOnTop="0" name="utm_zone"/>
    <field labelOnTop="0" name="waterbody_id"/>
    <field labelOnTop="0" name="wetted_width_m"/>
    <field labelOnTop="0" name="wetted_width_m-channel_width_m_time"/>
    <field labelOnTop="0" name="wetted_width_m_2"/>
    <field labelOnTop="0" name="wetted_width_m_2-channel_width_m_2_time"/>
    <field labelOnTop="0" name="wetted_width_m_3"/>
    <field labelOnTop="0" name="wetted_width_m_3-channel_width_m_3_time"/>
    <field labelOnTop="0" name="wetted_width_m_4"/>
    <field labelOnTop="0" name="wetted_width_m_4-channel_width_m_4_time"/>
    <field labelOnTop="0" name="wetted_width_m_5"/>
    <field labelOnTop="0" name="wetted_width_m_5-channel_width_m_5_time"/>
    <field labelOnTop="0" name="wetted_width_m_6"/>
    <field labelOnTop="0" name="wetted_width_m_6-channel_width_m_6_time"/>
    <field labelOnTop="0" name="wetted_width_m_7"/>
    <field labelOnTop="0" name="wetted_width_m_7-channel_width_m_7_time"/>
  </labelOnTop>
  <reuseLastValue>
    <field reuseLastValue="0" name="average_bankfull_depth_m"/>
    <field reuseLastValue="0" name="average_gradient_percent"/>
    <field reuseLastValue="0" name="average_residual_pool_depth_m"/>
    <field reuseLastValue="0" name="avg_channel_width_m"/>
    <field reuseLastValue="0" name="avg_wetted_width_m"/>
    <field reuseLastValue="0" name="bankfull_depth_number_1_m"/>
    <field reuseLastValue="0" name="bankfull_depth_number_1_m_time"/>
    <field reuseLastValue="0" name="bankfull_depth_number_2_m"/>
    <field reuseLastValue="0" name="bankfull_depth_number_2_m_time"/>
    <field reuseLastValue="0" name="bankfull_depth_number_3_m"/>
    <field reuseLastValue="0" name="bankfull_depth_number_3_m_time"/>
    <field reuseLastValue="0" name="bankfull_depth_number_4_m"/>
    <field reuseLastValue="0" name="bankfull_depth_number_4_m_time"/>
    <field reuseLastValue="0" name="bed_material_dominant"/>
    <field reuseLastValue="0" name="bed_material_subdominant"/>
    <field reuseLastValue="0" name="boulders"/>
    <field reuseLastValue="0" name="camera_id"/>
    <field reuseLastValue="0" name="channel_pattern"/>
    <field reuseLastValue="0" name="channel_width_m"/>
    <field reuseLastValue="0" name="channel_width_m_2"/>
    <field reuseLastValue="0" name="channel_width_m_3"/>
    <field reuseLastValue="0" name="channel_width_m_4"/>
    <field reuseLastValue="0" name="channel_width_m_5"/>
    <field reuseLastValue="0" name="channel_width_m_6"/>
    <field reuseLastValue="0" name="channel_width_m_7"/>
    <field reuseLastValue="0" name="comments"/>
    <field reuseLastValue="0" name="comments_2"/>
    <field reuseLastValue="0" name="conductivity_m_s_cm"/>
    <field reuseLastValue="0" name="confinement"/>
    <field reuseLastValue="0" name="coupling"/>
    <field reuseLastValue="0" name="crown_closure"/>
    <field reuseLastValue="0" name="d95_cm"/>
    <field reuseLastValue="0" name="d_cm"/>
    <field reuseLastValue="0" name="date_time_start"/>
    <field reuseLastValue="0" name="deep_pools"/>
    <field reuseLastValue="0" name="dewatered_dry_int_channel"/>
    <field reuseLastValue="0" name="feature_height_2_m"/>
    <field reuseLastValue="0" name="feature_height_3_m"/>
    <field reuseLastValue="0" name="feature_height_length_method"/>
    <field reuseLastValue="0" name="feature_height_m"/>
    <field reuseLastValue="0" name="feature_length_2_m"/>
    <field reuseLastValue="0" name="feature_length_3_m"/>
    <field reuseLastValue="0" name="feature_length_m"/>
    <field reuseLastValue="0" name="feature_time"/>
    <field reuseLastValue="0" name="feature_time_2"/>
    <field reuseLastValue="0" name="feature_time_3"/>
    <field reuseLastValue="0" name="feature_type"/>
    <field reuseLastValue="0" name="feature_type_2"/>
    <field reuseLastValue="0" name="feature_type_3"/>
    <field reuseLastValue="0" name="fid"/>
    <field reuseLastValue="0" name="functional_lwd"/>
    <field reuseLastValue="0" name="gazetted_names"/>
    <field reuseLastValue="0" name="gps_id"/>
    <field reuseLastValue="0" name="gps_waypoint_id"/>
    <field reuseLastValue="0" name="gps_waypoint_number"/>
    <field reuseLastValue="0" name="gradient"/>
    <field reuseLastValue="0" name="gradient_number_1_percent"/>
    <field reuseLastValue="0" name="gradient_number_1_percent_time"/>
    <field reuseLastValue="0" name="gradient_number_2_percent"/>
    <field reuseLastValue="0" name="gradient_number_2_percent_time"/>
    <field reuseLastValue="0" name="gradient_number_4_percent"/>
    <field reuseLastValue="0" name="gradient_number_4_percent_time"/>
    <field reuseLastValue="0" name="gradient_time"/>
    <field reuseLastValue="0" name="habitat_value_rating"/>
    <field reuseLastValue="0" name="instream_vegetation"/>
    <field reuseLastValue="0" name="instream_vegetation_type"/>
    <field reuseLastValue="0" name="l_bank_riparian_vegetation"/>
    <field reuseLastValue="0" name="l_bank_riparian_vegetation_stage"/>
    <field reuseLastValue="0" name="l_bank_shape"/>
    <field reuseLastValue="0" name="l_bank_texture_dominant_1"/>
    <field reuseLastValue="0" name="l_bank_texture_dominant_2"/>
    <field reuseLastValue="0" name="large_woody_debris"/>
    <field reuseLastValue="0" name="local_name"/>
    <field reuseLastValue="0" name="lwd_distribution"/>
    <field reuseLastValue="0" name="mergin_user"/>
    <field reuseLastValue="0" name="method_for_bankfull_depth"/>
    <field reuseLastValue="0" name="method_for_channel_width"/>
    <field reuseLastValue="0" name="method_for_conductivity"/>
    <field reuseLastValue="0" name="method_for_gradient"/>
    <field reuseLastValue="0" name="method_for_p_h"/>
    <field reuseLastValue="0" name="method_for_residual_pool_depth"/>
    <field reuseLastValue="0" name="method_for_temperature"/>
    <field reuseLastValue="0" name="method_for_wetted_width"/>
    <field reuseLastValue="0" name="morphology"/>
    <field reuseLastValue="0" name="no_visible_channel"/>
    <field reuseLastValue="0" name="overhanging_vegetation"/>
    <field reuseLastValue="0" name="p_h"/>
    <field reuseLastValue="0" name="photo_extra_1"/>
    <field reuseLastValue="0" name="photo_extra_1_tag"/>
    <field reuseLastValue="0" name="photo_extra_2"/>
    <field reuseLastValue="0" name="photo_extra_2_tag"/>
    <field reuseLastValue="0" name="photo_gravel"/>
    <field reuseLastValue="0" name="photo_pool"/>
    <field reuseLastValue="0" name="photo_typical_1"/>
    <field reuseLastValue="0" name="photo_typical_2"/>
    <field reuseLastValue="0" name="r_bank_riparian_vegetation"/>
    <field reuseLastValue="0" name="r_bank_riparian_vegetation_stage"/>
    <field reuseLastValue="0" name="r_bank_shape"/>
    <field reuseLastValue="0" name="r_bank_texture_dominant_1"/>
    <field reuseLastValue="0" name="r_bank_texture_dominant_2"/>
    <field reuseLastValue="0" name="reach_number"/>
    <field reuseLastValue="0" name="reference_number"/>
    <field reuseLastValue="0" name="residual_pool_depth_m"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_2"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_2_time"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_3"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_3_time"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_4"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_4_time"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_5"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_5_time"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_6"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_6_time"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_7"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_7_time"/>
    <field reuseLastValue="0" name="residual_pool_depth_m_time"/>
    <field reuseLastValue="0" name="site_length"/>
    <field reuseLastValue="0" name="site_number"/>
    <field reuseLastValue="0" name="small_woody_debris"/>
    <field reuseLastValue="0" name="stage"/>
    <field reuseLastValue="0" name="surveyor_1"/>
    <field reuseLastValue="0" name="surveyor_2"/>
    <field reuseLastValue="0" name="surveyor_3"/>
    <field reuseLastValue="0" name="temperature_c"/>
    <field reuseLastValue="0" name="total_cover"/>
    <field reuseLastValue="0" name="tributaries"/>
    <field reuseLastValue="0" name="turbidity"/>
    <field reuseLastValue="0" name="undercut_banks"/>
    <field reuseLastValue="0" name="utm_easting"/>
    <field reuseLastValue="0" name="utm_method"/>
    <field reuseLastValue="0" name="utm_northing"/>
    <field reuseLastValue="0" name="utm_zone"/>
    <field reuseLastValue="0" name="waterbody_id"/>
    <field reuseLastValue="0" name="wetted_width_m"/>
    <field reuseLastValue="0" name="wetted_width_m-channel_width_m_time"/>
    <field reuseLastValue="0" name="wetted_width_m_2"/>
    <field reuseLastValue="0" name="wetted_width_m_2-channel_width_m_2_time"/>
    <field reuseLastValue="0" name="wetted_width_m_3"/>
    <field reuseLastValue="0" name="wetted_width_m_3-channel_width_m_3_time"/>
    <field reuseLastValue="0" name="wetted_width_m_4"/>
    <field reuseLastValue="0" name="wetted_width_m_4-channel_width_m_4_time"/>
    <field reuseLastValue="0" name="wetted_width_m_5"/>
    <field reuseLastValue="0" name="wetted_width_m_5-channel_width_m_5_time"/>
    <field reuseLastValue="0" name="wetted_width_m_6"/>
    <field reuseLastValue="0" name="wetted_width_m_6-channel_width_m_6_time"/>
    <field reuseLastValue="0" name="wetted_width_m_7"/>
    <field reuseLastValue="0" name="wetted_width_m_7-channel_width_m_7_time"/>
  </reuseLastValue>
  <dataDefinedFieldProperties/>
  <widgets/>
  <layerGeometryType>0</layerGeometryType>
</qgis>
