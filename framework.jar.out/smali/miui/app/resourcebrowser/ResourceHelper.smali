.class public Lmiui/app/resourcebrowser/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;,
        Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    }
.end annotation


# static fields
.field private static mFolderInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/resourcebrowser/ResourceHelper;->mFolderInfoCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static addNoMedia(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 304
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 12
    .parameter "metaData"
    .parameter "action"
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "com.miui.android.resourcebrowser.USING_PICKER"

    const-string v7, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const-string v11, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    .line 67
    const-string v5, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 68
    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-string v5, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v5, 0x6

    invoke-virtual {p0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v5, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    const-string v6, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 73
    .local v1, currentUri:Landroid/net/Uri;
    const-string v5, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 74
    .local v2, defaultUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 75
    const-string v5, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    move v6, v9

    :goto_0
    invoke-static {p2, v1, v6}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 79
    .local v3, sourceFolders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "android.intent.extra.ringtone.TYPE"

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 100
    :goto_1
    :pswitch_0
    const-string v6, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    new-array v5, v10, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    .end local v1           #currentUri:Landroid/net/Uri;
    .end local v2           #defaultUri:Landroid/net/Uri;
    .end local v3           #sourceFolders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    const-string v5, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p0, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 116
    const-string v5, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v5, 0x4

    invoke-virtual {p0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    :cond_1
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 120
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 124
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    const v6, 0x6090066

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_3
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 128
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {p0, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    :cond_4
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 132
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 145
    :cond_5
    :goto_3
    const-string v5, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 146
    const-string v5, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    new-array v6, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preview_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    :cond_6
    const-string v5, "com.miui.android.resourcebrowser.PREVIEW_PREFIX_INDICATOR"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 151
    const-string v5, "com.miui.android.resourcebrowser.PREVIEW_PREFIX_INDICATOR"

    const-string v6, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    :cond_7
    const-string v5, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 154
    const-string v5, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX"

    const-string v6, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    :cond_8
    const-string v5, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX_INDICATOR"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    .line 157
    const-string v5, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX_INDICATOR"

    const-string v6, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    :cond_9
    const-string v5, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    .line 161
    const-string v5, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    new-array v6, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lmiui/app/resourcebrowser/ResourceConstants;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    :cond_a
    const-string v5, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    .line 167
    const-string v5, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lmiui/app/resourcebrowser/ResourceConstants;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {p0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_b
    const-string v5, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    .line 171
    sget-object v0, Lmiui/app/resourcebrowser/ResourceConstants;->LIST_PATH:Ljava/lang/String;

    .line 172
    .local v0, cachePath:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_c
    const-string v5, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {p0, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0           #cachePath:Ljava/lang/String;
    :cond_d
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, typeParam:Ljava/lang/String;
    if-nez v4, :cond_17

    .line 180
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_2

    .line 198
    :goto_4
    const-string v5, "com.miui.android.resourcebrowser.VERSION_URL"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    .line 199
    const-string v5, "com.miui.android.resourcebrowser.VERSION_URL"

    const-string v6, "r=xmXshare/themeDetails&id=%s"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_e
    const-string v5, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_18

    .line 203
    const-string v5, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v6, Lmiui/app/resourcebrowser/LocalResourceListActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v5, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    .line 205
    const-string v5, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    const-string v6, "miui"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_f
    :goto_5
    const-string v5, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_CLASS"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    .line 212
    const-string v5, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_CLASS"

    const-class v6, Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v5, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    .line 214
    const-string v5, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    const-string v6, "miui"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_10
    :goto_6
    const-string v5, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 221
    const-string v5, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v6, Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v5, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    .line 223
    const-string v5, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    const-string v6, "miui"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_11
    :goto_7
    return-object p0

    .end local v4           #typeParam:Ljava/lang/String;
    .restart local v1       #currentUri:Landroid/net/Uri;
    .restart local v2       #defaultUri:Landroid/net/Uri;
    :cond_12
    move v6, v10

    .line 75
    goto/16 :goto_0

    .line 81
    .restart local v3       #sourceFolders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_1
    const-string v5, "/system/media/audio/ringtones"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 85
    :pswitch_2
    const-string v5, "/system/media/audio/notifications"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 89
    :pswitch_3
    const-string v5, "/system/media/audio/alarms"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->DOWNLOADED_ALARM_PATH:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 93
    :pswitch_4
    const-string v5, "/system/media/audio/ringtones"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v5, "/system/media/audio/notifications"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v5, "/system/media/audio/alarms"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->DOWNLOADED_ALARM_PATH:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    .end local v1           #currentUri:Landroid/net/Uri;
    .end local v2           #defaultUri:Landroid/net/Uri;
    .end local v3           #sourceFolders:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 102
    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string v5, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-virtual {p0, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v5, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 105
    :cond_14
    const-string v5, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 106
    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    const-string v5, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v5, 0x2

    invoke-virtual {p0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v5, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 109
    :cond_15
    const-string v5, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 110
    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 112
    :cond_16
    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {p0, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 134
    :pswitch_5
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    const-string/jumbo v5, "theme"

    invoke-virtual {p0, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 137
    :pswitch_6
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    const-string/jumbo v5, "wallpaper"

    invoke-virtual {p0, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 140
    :pswitch_7
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    const-string v5, "ringtone"

    invoke-virtual {p0, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    .restart local v4       #typeParam:Ljava/lang/String;
    :pswitch_8
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v6, "1"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 185
    :pswitch_9
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v6, "2"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 188
    :pswitch_a
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    const-string v6, "3"

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 192
    :cond_17
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_HOTTEST_URL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r=xmXshare/index&type=%s&"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "begin=%d&length=%d&sort=hot&uistart=%d&uiend=%d&formatstart=%d&formatend=%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_LATEST_URL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r=xmXshare/index&type=%s&"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "begin=%d&length=%d&sort=time&uistart=%d&uiend=%d&formatstart=%d&formatend=%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v5, "com.miui.android.resourcebrowser.CATEGORY_URL"

    const-string v6, "r=xmXshare/category&type=%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 207
    :cond_18
    const-string v5, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    .line 208
    const-string v5, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 216
    :cond_19
    const-string v5, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    .line 217
    const-string v5, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 225
    :cond_1a
    const-string v5, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    .line 226
    const-string v5, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 132
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 180
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static copyIntData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "key"

    .prologue
    .line 296
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    return-void
.end method

.method public static copyLongData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "source"
    .parameter "target"
    .parameter "key"

    .prologue
    .line 300
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 301
    return-void
.end method

.method public static copyResourceInformation(Lmiui/app/resourcebrowser/Resource;Lmiui/app/resourcebrowser/Resource;)V
    .locals 3
    .parameter "source"
    .parameter "target"

    .prologue
    .line 280
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    .local v0, sourceInfo:Landroid/os/Bundle;
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v1

    .line 283
    .local v1, targetInfo:Landroid/os/Bundle;
    const-string v2, "online_path"

    invoke-static {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->copyStringData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v2, "version"

    invoke-static {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->copyStringData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 285
    const-string/jumbo v2, "ui_version"

    invoke-static {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->copyIntData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 286
    const-string v2, "m_lastupdate"

    invoke-static {v0, v1, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->copyLongData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, v1}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public static copyStringData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "source"
    .parameter "target"
    .parameter "key"

    .prologue
    .line 292
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static exit(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 481
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x6090041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x6090042

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 485
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lmiui/app/resourcebrowser/ResourceHelper$1;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/ResourceHelper$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 492
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 493
    return-void
.end method

.method public static getAndInsertMediaEntryByPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    const/4 v2, 0x0

    .line 461
    :goto_0
    return-object v2

    .line 451
    :cond_0
    invoke-static {p0, p1}, Lmiui/app/resourcebrowser/ResourceHelper;->getMediaEntryByPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 454
    .local v0, ret:Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 455
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "is_music"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    move-object v2, v0

    .line 461
    goto :goto_0
.end method

.method public static getContentColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "column"

    .prologue
    .line 410
    const/4 v8, 0x0

    .line 412
    .local v8, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 416
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 420
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    move-object v0, v8

    :goto_1
    return-object v0

    .line 422
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 423
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static getDefaultFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 683
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 684
    .local v0, dotIndex:I
    if-gez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 687
    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, name:Ljava/lang/String;
    const-string v2, "%s (%d/%d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultMusicPlayList(Landroid/content/Context;Lmiui/app/resourcebrowser/Resource;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "resourceItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lmiui/app/resourcebrowser/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v3, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, localPath:Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/Resource;->getOnlinePath()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, onlinePath:Ljava/lang/String;
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->getUriByPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 697
    .local v4, uri:Landroid/net/Uri;
    invoke-static {p0, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 699
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_0
    :goto_0
    return-object v3

    .line 700
    :cond_1
    if-eqz v1, :cond_0

    .line 701
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 331
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, ""

    .line 338
    :goto_0
    return-object v1

    .line 334
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 338
    goto :goto_0
.end method

.method private static getFileInfoById(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    .locals 2
    .parameter "id"
    .parameter "directory"

    .prologue
    .line 574
    invoke-static {p1}, Lmiui/app/resourcebrowser/ResourceHelper;->getFolderInfoCache(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    move-result-object v0

    .line 575
    .local v0, folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->ids:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const-string v1, ""

    .line 349
    :goto_0
    return-object v1

    .line 345
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 347
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 349
    goto :goto_0
.end method

.method public static getFolderInfoCache(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    .locals 1
    .parameter "directory"

    .prologue
    .line 579
    invoke-static {p0}, Lmiui/app/resourcebrowser/ResourceHelper;->refreshFolderInfoCache(Ljava/lang/String;)Z

    .line 580
    sget-object v0, Lmiui/app/resourcebrowser/ResourceHelper;->mFolderInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    return-object p0
.end method

.method public static getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "directory"

    .prologue
    .line 327
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "size"

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4130

    .line 315
    const-wide/high16 v0, 0x4090

    .line 316
    .local v0, oneKilo:D
    const-wide/high16 v2, 0x4130

    .line 317
    .local v2, oneMega:D
    long-to-double v4, p1

    cmpg-double v4, v4, v8

    if-gez v4, :cond_0

    .line 318
    const-string v4, "%.0f%s"

    new-array v5, v6, [Ljava/lang/Object;

    long-to-double v6, p1

    const-wide/high16 v8, 0x4090

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x6090005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 321
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%.1f%s"

    new-array v5, v6, [Ljava/lang/Object;

    long-to-double v6, p1

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x6090006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getMediaEntryByPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 429
    const/4 v9, 0x0

    .line 430
    .local v9, uri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 431
    .local v1, contentUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 438
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 440
    .local v7, id:J
    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 442
    .end local v7           #id:J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_1
    return-object v9
.end method

.method private static getPathById(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "version"
    .parameter "directory"

    .prologue
    .line 566
    invoke-static {p0, p2}, Lmiui/app/resourcebrowser/ResourceHelper;->getFileInfoById(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    move-result-object v0

    .line 567
    .local v0, fileInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->version:I

    if-ne v1, p1, :cond_0

    .line 568
    iget-object v1, v0, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->path:Ljava/lang/String;

    .line 570
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 370
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "recursive"

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    const-string v4, ""

    .line 394
    :goto_0
    return-object v4

    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    .line 380
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, authority:Ljava/lang/String;
    const-string/jumbo v4, "settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 382
    const-string/jumbo v4, "value"

    invoke-static {p0, p1, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getContentColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    .local v1, nextUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 388
    if-eqz v3, :cond_2

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 389
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v2

    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #nextUri:Landroid/net/Uri;
    :cond_2
    :goto_2
    move-object v4, v2

    .line 394
    goto :goto_0

    .line 383
    .restart local v0       #authority:Ljava/lang/String;
    :cond_3
    const-string v4, "media"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    const-string v4, "_data"

    invoke-static {p0, p1, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getContentColumnValue(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 391
    .end local v0           #authority:Ljava/lang/String;
    :cond_4
    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static getResourceStatus(Lmiui/app/resourcebrowser/Resource;Landroid/os/Bundle;)I
    .locals 9
    .parameter "resourceItem"
    .parameter "metaData"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 512
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 544
    :goto_0
    return v6

    .line 516
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, file:Ljava/io/File;
    const-string v6, "com.miui.android.resourcebrowser.VERSION_SUPPORTED"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 518
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getVersion()I

    move-result v5

    .line 519
    .local v5, version:I
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getId()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, id:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 521
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    .line 522
    goto :goto_0

    :cond_2
    move v6, v8

    .line 524
    goto :goto_0

    .line 528
    :cond_3
    invoke-static {v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lmiui/app/resourcebrowser/ResourceHelper;->getFileInfoById(Ljava/lang/String;Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    move-result-object v1

    .line 529
    .local v1, fileInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    if-eqz v1, :cond_4

    iget v6, v1, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->version:I

    move v3, v6

    .line 531
    .local v3, localLastedVersion:I
    :goto_1
    if-ne v3, v5, :cond_5

    move v6, v7

    .line 532
    goto :goto_0

    .end local v3           #localLastedVersion:I
    :cond_4
    move v3, v7

    .line 529
    goto :goto_1

    .line 533
    .restart local v3       #localLastedVersion:I
    :cond_5
    if-lez v3, :cond_6

    if-ge v3, v5, :cond_6

    .line 534
    const/4 v6, 0x1

    goto :goto_0

    .line 537
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    .line 538
    goto :goto_0

    :cond_7
    move v6, v8

    .line 540
    goto :goto_0

    .line 541
    .end local v1           #fileInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #localLastedVersion:I
    .end local v5           #version:I
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    .line 542
    goto :goto_0

    :cond_9
    move v6, v8

    .line 544
    goto :goto_0
.end method

.method public static getUriByPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "path"

    .prologue
    .line 398
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const/4 v2, 0x0

    .line 406
    :goto_0
    return-object v2

    .line 401
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, scheme:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 404
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 406
    goto :goto_0
.end method

.method public static getVersionPath(Lmiui/app/resourcebrowser/Resource;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .parameter "resourceItem"
    .parameter "metaData"

    .prologue
    .line 548
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.miui.android.resourcebrowser.VERSION_SUPPORTED"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 550
    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceHelper;->getDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, directory:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getVersion()I

    move-result v4

    .line 552
    .local v4, version:I
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, id:Ljava/lang/String;
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 554
    invoke-static {v1, v4, v0}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathById(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, localLatestFile:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    .line 562
    .end local v0           #directory:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #localLatestFile:Ljava/lang/String;
    .end local v4           #version:I
    :goto_0
    return-object v5

    .line 558
    .restart local v0       #directory:Ljava/lang/String;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #localLatestFile:Ljava/lang/String;
    .restart local v4       #version:I
    :cond_0
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v0, v5}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByResource(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v0           #directory:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #localLatestFile:Ljava/lang/String;
    .end local v4           #version:I
    :cond_1
    move-object v5, v3

    .line 562
    goto :goto_0
.end method

.method public static getViewResource(I)I
    .locals 1
    .parameter "displayType"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, id:I
    packed-switch p0, :pswitch_data_0

    .line 262
    :goto_0
    return v0

    .line 236
    :pswitch_0
    const v0, 0x603000c

    .line 237
    goto :goto_0

    .line 239
    :pswitch_1
    const v0, 0x603000b

    .line 240
    goto :goto_0

    .line 242
    :pswitch_2
    const v0, 0x6030008

    .line 243
    goto :goto_0

    .line 245
    :pswitch_3
    const v0, 0x603000a

    .line 246
    goto :goto_0

    .line 248
    :pswitch_4
    const v0, 0x6030009

    .line 249
    goto :goto_0

    .line 251
    :pswitch_5
    const v0, 0x603000f

    .line 252
    goto :goto_0

    .line 254
    :pswitch_6
    const v0, 0x603000e

    .line 255
    goto :goto_0

    .line 257
    :pswitch_7
    const v0, 0x603000d

    .line 258
    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static isCombineView(I)Z
    .locals 2
    .parameter "displayType"

    .prologue
    const/4 v1, 0x1

    .line 266
    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompatiblePlatformVersion(III)Z
    .locals 1
    .parameter "platformVersion"
    .parameter "startPlatformVersion"
    .parameter "endPlatformVersion"

    .prologue
    .line 497
    if-gt p1, p0, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataResource(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 679
    if-eqz p0, :cond_0

    const-string v0, "/data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultipleView(I)Z
    .locals 1
    .parameter "displayType"

    .prologue
    .line 276
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleView(I)Z
    .locals 1
    .parameter "displayType"

    .prologue
    .line 271
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSystemResource(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 675
    if-eqz p0, :cond_0

    const-string v0, "/system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZipResource(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 671
    :goto_0
    return v1

    .line 663
    :cond_0
    const-string v1, ".zip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".mtz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 664
    goto :goto_0

    .line 666
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    .line 668
    goto :goto_0

    .line 671
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    const-string v6, ".mtz"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".zip"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 641
    :cond_0
    const-string v6, "_("

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 642
    .local v2, firstIndex:I
    const-string v6, ")."

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 643
    .local v4, secondIndex:I
    if-lez v2, :cond_1

    if-lez v4, :cond_1

    .line 644
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, content:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 646
    .local v1, dotIndex:I
    if-lez v1, :cond_1

    .line 648
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 649
    .local v3, id:I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 650
    .local v5, version:I
    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #dotIndex:I
    .end local v2           #firstIndex:I
    .end local v3           #id:I
    .end local v4           #secondIndex:I
    .end local v5           #version:I
    :goto_0
    return-object v6

    .line 651
    .restart local v0       #content:Ljava/lang/String;
    .restart local v1       #dotIndex:I
    .restart local v2       #firstIndex:I
    .restart local v4       #secondIndex:I
    :catch_0
    move-exception v6

    .line 657
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #dotIndex:I
    .end local v2           #firstIndex:I
    .end local v4           #secondIndex:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static refreshFolderInfoCache(Ljava/lang/String;)Z
    .locals 9
    .parameter "directory"

    .prologue
    .line 589
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, files:[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 592
    const/4 p0, 0x0

    .line 636
    .end local v1           #folder:Ljava/io/File;
    .end local p0
    :goto_0
    return p0

    .line 594
    .restart local v1       #folder:Ljava/io/File;
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 595
    .local v0, dirty:Z
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 596
    .local v5, modifiedTime:J
    array-length v1, v3

    .line 597
    .local v1, filesCount:I
    sget-object v2, Lmiui/app/resourcebrowser/ResourceHelper;->mFolderInfoCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    .line 598
    .local v2, folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    if-nez v2, :cond_1

    .line 599
    const/4 v0, 0x1

    .line 600
    new-instance v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    .end local v2           #folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    invoke-direct {v2}, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;-><init>()V

    .line 601
    .restart local v2       #folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    iput-wide v5, v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->modifiedTime:J

    .line 602
    iput v1, v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->filesCount:I

    .line 603
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    .line 604
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->ids:Ljava/util/Map;

    .line 605
    sget-object v4, Lmiui/app/resourcebrowser/ResourceHelper;->mFolderInfoCache:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v4, v2

    .line 607
    .end local v2           #folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    .local v4, folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    if-nez v0, :cond_2

    iget-wide v7, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->modifiedTime:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_2

    iget v2, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->filesCount:I

    if-eq v2, v1, :cond_7

    .line 608
    :cond_2
    const-string v0, "ResourceBrowser"

    .end local v0           #dirty:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refresh folder: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v0, 0x1

    .line 610
    .restart local v0       #dirty:Z
    iput-wide v5, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->modifiedTime:J

    .line 611
    iput v1, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->filesCount:I

    .line 612
    iget-object v1, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    .end local v1           #filesCount:I
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 613
    iget-object v1, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->ids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 614
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_1
    array-length v1, v3

    if-ge v5, v1, :cond_6

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v3, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 616
    .local v6, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_5

    .line 618
    new-instance v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    invoke-direct {v2}, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;-><init>()V

    .line 619
    .local v2, fileInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    iput-object v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->path:Ljava/lang/String;

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .end local v6           #path:Ljava/lang/String;
    iput-wide v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->modifiedTime:J

    .line 621
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->length:J

    .line 622
    aget-object v1, v3, v5

    .end local v1           #file:Ljava/io/File;
    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceHelper;->parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 623
    .local v1, idVersion:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4

    .line 624
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->id:Ljava/lang/String;

    .line 625
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v1           #idVersion:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->version:I

    .line 627
    iget-object v1, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->ids:Ljava/util/Map;

    iget-object v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    .line 628
    .local v1, oldVersionInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    if-eqz v1, :cond_3

    iget v1, v1, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->version:I

    .end local v1           #oldVersionInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    iget v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->version:I

    if-ge v1, v6, :cond_4

    .line 629
    :cond_3
    iget-object v1, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->ids:Ljava/util/Map;

    iget-object v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_4
    iget-object v1, v4, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    iget-object v6, v2, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->path:Ljava/lang/String;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .end local v2           #fileInfo:Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;
    :cond_5
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_1

    :cond_6
    move p0, v0

    .end local v0           #dirty:Z
    .local p0, dirty:Z
    goto/16 :goto_0

    .restart local v0       #dirty:Z
    .local v1, filesCount:I
    .local v5, modifiedTime:J
    .local p0, directory:Ljava/lang/String;
    :cond_7
    move p0, v0

    .end local v0           #dirty:Z
    .local p0, dirty:Z
    goto/16 :goto_0
.end method

.method public static setMusicVolumeType(Landroid/app/Activity;I)V
    .locals 2
    .parameter "context"
    .parameter "ringtoneType"

    .prologue
    .line 353
    const/4 v0, -0x1

    .line 354
    .local v0, streamType:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 355
    const/4 v0, 0x2

    .line 364
    :goto_0
    if-ltz v0, :cond_0

    .line 365
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 367
    :cond_0
    return-void

    .line 356
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 357
    const/4 v0, 0x5

    goto :goto_0

    .line 358
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 359
    const/4 v0, 0x4

    goto :goto_0

    .line 361
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static setResourceStatus(Ljava/lang/String;Lmiui/app/resourcebrowser/ResourceSet;I)V
    .locals 3
    .parameter "path"
    .parameter "resourceSet"
    .parameter "status"

    .prologue
    .line 501
    if-eqz p0, :cond_1

    .line 502
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lmiui/app/resourcebrowser/ResourceSet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 503
    invoke-virtual {p1, v0}, Lmiui/app/resourcebrowser/ResourceSet;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/Resource;

    .line 504
    .local v1, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v1}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v1, p2}, Lmiui/app/resourcebrowser/Resource;->setStatus(I)V

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0           #i:I
    .end local v1           #resource:Lmiui/app/resourcebrowser/Resource;
    :cond_1
    return-void
.end method

.method public static writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .parameter "is"
    .parameter "filename"

    .prologue
    .line 466
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 468
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v4, -0x1

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 469
    .local v1, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 470
    .local v2, out:Ljava/io/BufferedOutputStream;
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {p1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 471
    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 472
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 473
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 474
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v1           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v2           #out:Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 476
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
