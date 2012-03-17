/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.lt18ispecialsettings;
import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemProperties;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.view.MenuItem;

public class Lt18iSpecialSettings extends PreferenceActivity{

    /** If there is no setting in the provider, use this. */
    private static final String KEY_XLOUD_ENABLED = "xloud";
    private static final String KEY_SW_IQI_ENABLED = "swiqi_strings_swiqi_txt";

    private CheckBoxPreference mXLoudEnabled;
    private CheckBoxPreference mSwIqiEnabled;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
              actionBar.setHomeButtonEnabled(true);
        }

        addPreferencesFromResource(R.xml.lt18i_special_settings);

        mXLoudEnabled = (CheckBoxPreference) findPreference(KEY_XLOUD_ENABLED);
        if (SystemProperties.getBoolean("ro.semc.xloud.supported", false) == false) {
            getPreferenceScreen().removePreference(mXLoudEnabled);
            mXLoudEnabled = null;
        }

        mSwIqiEnabled = (CheckBoxPreference) findPreference(KEY_SW_IQI_ENABLED);
        if (SystemProperties.getBoolean("ro.service.swiqi.supported", false) == false) {
            getPreferenceScreen().removePreference(mSwIqiEnabled);
            mSwIqiEnabled = null;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (mXLoudEnabled != null) {
            int xLoudSupported = Settings.System.getInt(getContentResolver(), "com.sonyericsson.xloud_enabled", 1);
            mXLoudEnabled.setChecked(xLoudSupported != 0);
        }

        if (mSwIqiEnabled != null) {
            mSwIqiEnabled.setPersistent(false);
            int swIqiEnabled = SystemProperties.getInt("persist.service.swiqi.enable", 0);
            mSwIqiEnabled.setChecked(swIqiEnabled != 0);
        }
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mXLoudEnabled) {
            if (mXLoudEnabled != null) {
                Intent intent = new Intent("com.sonyericsson.audioeffectservice.intent.action.XLOUD_REQUEST");
                boolean checked = mXLoudEnabled.isChecked();
                intent.putExtra("com.sonyericsson.audioeffectservice.intent.extra.XLOUD_STATUS", checked ? 1 : 0);
                sendBroadcast(intent);
            }
        }

        if (preference == mSwIqiEnabled) {
            if (mSwIqiEnabled != null) {
                SystemProperties.set("persist.service.swiqi.enable", mSwIqiEnabled.isChecked() ? "1" : "0");
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
        case android.R.id.home:
            finish();
            return true;

        default:
            return super.onOptionsItemSelected(item);
        }
    }
}