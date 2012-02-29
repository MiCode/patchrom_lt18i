.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMonkeyRunning()Z
    .locals 2

    .prologue
    .line 120
    const-string v0, "ro.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"

    .prologue
    .line 148
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/IconPreferenceScreen;

    .line 150
    .local v2, preference:Lcom/android/settings/IconPreferenceScreen;
    if-nez v2, :cond_0

    .line 151
    const/4 p0, 0x0

    .line 207
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 154
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/IconPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 155
    .local p2, intent:Landroid/content/Intent;
    if-eqz p2, :cond_3

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 158
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 p0, 0x80

    invoke-virtual {v1, p2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .end local p0
    move-result-object p2

    .line 159
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 160
    .local v0, listSize:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_1
    if-ge p0, v0, :cond_3

    .line 161
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 163
    const/4 p0, 0x0

    .line 164
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 165
    .local v4, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, summary:Ljava/lang/String;
    :try_start_0
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local p1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    .line 170
    .local p2, res:Landroid/content/res/Resources;
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 172
    .local p1, metaData:Landroid/os/Bundle;
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 173
    const-string v5, "com.android.settings.icon"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 174
    const-string v5, "com.android.settings.title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    const-string v5, "com.android.settings.summary"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .end local p1           #metaData:Landroid/os/Bundle;
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .end local v0           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    move-object p2, v4

    .line 185
    .end local v4           #title:Ljava/lang/String;
    .local p2, title:Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .end local p2           #title:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 190
    .restart local p2       #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p0}, Lcom/android/settings/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {v2, p2}, Lcom/android/settings/IconPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v2, p1}, Lcom/android/settings/IconPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    new-instance p0, Landroid/content/Intent;

    .end local p0           #icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local p1           #summary:Ljava/lang/String;
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .end local p2           #title:Ljava/lang/String;
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/settings/IconPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 199
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 177
    .restart local v0       #summary:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    .restart local p0       #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception p1

    move-object p1, v4

    .end local v4           #title:Ljava/lang/String;
    .local p1, title:Ljava/lang/String;
    move-object p2, p1

    .end local p1           #title:Ljava/lang/String;
    .restart local p2       #title:Ljava/lang/String;
    move-object p1, v0

    .line 181
    .end local v0           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    goto :goto_2

    .line 179
    .end local p1           #summary:Ljava/lang/String;
    .end local p2           #title:Ljava/lang/String;
    .restart local v0       #summary:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    :catch_1
    move-exception p1

    move-object p1, v4

    .end local v4           #title:Ljava/lang/String;
    .local p1, title:Ljava/lang/String;
    move-object p2, p1

    .end local p1           #title:Ljava/lang/String;
    .restart local p2       #title:Ljava/lang/String;
    move-object p1, v0

    .end local v0           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    goto :goto_2

    .line 160
    .local v0, listSize:I
    .local p0, i:I
    .local p1, parentPreferenceGroup:Landroid/preference/PreferenceGroup;
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 205
    .end local v0           #listSize:I
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local p0           #i:I
    .end local p2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, summary:Ljava/lang/String;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v4       #title:Ljava/lang/String;
    .local p0, icon:Landroid/graphics/drawable/Drawable;
    .local p1, metaData:Landroid/os/Bundle;
    .local p2, res:Landroid/content/res/Resources;
    :cond_4
    move-object p1, v0

    .end local v0           #summary:Ljava/lang/String;
    .local p1, summary:Ljava/lang/String;
    move-object p2, v4

    .end local v4           #title:Ljava/lang/String;
    .local p2, title:Ljava/lang/String;
    goto :goto_2
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 79
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 80
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 113
    :goto_0
    return v7

    .line 84
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 88
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 90
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 91
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 92
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 96
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 100
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 102
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    move v7, v10

    .line 105
    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v10

    .line 113
    goto :goto_0
.end method
