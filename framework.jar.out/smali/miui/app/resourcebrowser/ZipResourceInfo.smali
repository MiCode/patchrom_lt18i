.class public Lmiui/app/resourcebrowser/ZipResourceInfo;
.super Ljava/lang/Object;
.source "ZipResourceInfo.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# static fields
.field protected static final AUTHOR_TAG:Ljava/lang/String; = "author"

.field protected static final DESIGNER_TAG:Ljava/lang/String; = "designer"

.field protected static final MAXIMUM_PREVIEW_COUNT:I = 0xa

.field protected static final PLATFORM_VERSION_TAG:Ljava/lang/String; = "platformVersion"

.field protected static final TITLE_TAG:Ljava/lang/String; = "title"

.field protected static final UI_VERSION_TAG:Ljava/lang/String; = "uiVersion"

.field protected static final VERSION_TAG:Ljava/lang/String; = "version"


# instance fields
.field public mAuthor:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mDesigner:Ljava/lang/String;

.field protected mEncodedPath:Ljava/lang/String;

.field public mLastModified:J

.field protected mNvp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPath:Ljava/lang/String;

.field public mPlatformVersion:I

.field protected mPrefix:[Ljava/lang/String;

.field public mPreviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSize:J

.field public mThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;

.field public mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;)V
    .locals 6
    .parameter "context"
    .parameter "path"
    .parameter "zipResourceCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mThumbnails:Ljava/util/ArrayList;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPreviews:Ljava/util/ArrayList;

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    .line 51
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ZipResourceInfo;->getCacheInstance()Lmiui/app/resourcebrowser/ZipResourceCache;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    .line 77
    iput-object p1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    .line 79
    const/16 v2, 0x2f

    const/16 v3, 0x5f

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mEncodedPath:Ljava/lang/String;

    .line 81
    :try_start_0
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "META_DATA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 82
    .local v1, metaData:Landroid/os/Bundle;
    const-string v2, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPrefix:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1           #metaData:Landroid/os/Bundle;
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    .line 88
    iget-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mSize:J

    .line 94
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lmiui/app/resourcebrowser/ZipResourceCache;->valid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p3, Lmiui/app/resourcebrowser/ZipResourceCache;->title:Ljava/lang/String;

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    .line 96
    iget-object v2, p3, Lmiui/app/resourcebrowser/ZipResourceCache;->author:Ljava/lang/String;

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    .line 97
    iget-object v2, p3, Lmiui/app/resourcebrowser/ZipResourceCache;->designer:Ljava/lang/String;

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mDesigner:Ljava/lang/String;

    .line 98
    iget-object v2, p3, Lmiui/app/resourcebrowser/ZipResourceCache;->version:Ljava/lang/String;

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    .line 99
    iget v2, p3, Lmiui/app/resourcebrowser/ZipResourceCache;->platformVersion:I

    iput v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPlatformVersion:I

    .line 100
    iget-object v2, p3, Lmiui/app/resourcebrowser/ZipResourceCache;->nvp:Ljava/util/HashMap;

    iput-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    .line 114
    :goto_1
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0, p2}, Lmiui/app/resourcebrowser/ZipResourceInfo;->parseBasicInformation(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    iput-object v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->filePath:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-wide v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    iput-wide v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->lastModifyTime:J

    .line 105
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-wide v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mSize:J

    iput-wide v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->fileSize:J

    .line 107
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    iput-object v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->title:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    iput-object v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->author:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mDesigner:Ljava/lang/String;

    iput-object v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->designer:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    iput-object v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->version:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPlatformVersion:I

    iput v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->platformVersion:I

    .line 112
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    iput-object v3, v2, Lmiui/app/resourcebrowser/ZipResourceCache;->nvp:Ljava/util/HashMap;

    goto :goto_1

    .line 83
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static varargs createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lmiui/app/resourcebrowser/ZipResourceInfo;
    .locals 4
    .parameter "context"
    .parameter "path"
    .parameter "cache"
    .parameter "args"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    :try_start_0
    new-instance v2, Lmiui/app/resourcebrowser/ZipResourceInfo;

    invoke-direct {v2, p0, p1, p2}, Lmiui/app/resourcebrowser/ZipResourceInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1           #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    .local v2, result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Lmiui/app/resourcebrowser/ZipResourceCache;->valid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadResourcePreviews()V

    .line 62
    iget-object p2, v2, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    .line 64
    :cond_1
    invoke-virtual {v2, p2}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadPreviewsFromCache(Lmiui/app/resourcebrowser/ZipResourceCache;)V

    .line 65
    if-eqz p2, :cond_2

    .line 66
    iput-object p2, v2, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v1, v2

    .line 72
    .end local v2           #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    .restart local v1       #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 69
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    .restart local v2       #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    .restart local v1       #result:Lmiui/app/resourcebrowser/ZipResourceInfo;
    goto :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    .line 126
    return-void
.end method

.method protected extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "zipfile"
    .parameter "entry"
    .parameter "path"

    .prologue
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ZipResourceInfo;->getPreviewPathPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, localPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 246
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_1
    :goto_0
    return-object v2

    .line 249
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 250
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCache()Lmiui/app/resourcebrowser/ZipResourceCache;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    return-object v0
.end method

.method protected getCacheInstance()Lmiui/app/resourcebrowser/ZipResourceCache;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lmiui/app/resourcebrowser/ZipResourceCache$DefaultZipCacheImpl;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/ZipResourceCache$DefaultZipCacheImpl;-><init>()V

    return-object v0
.end method

.method public getInformation()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, information:Landroid/os/Bundle;
    const-string v1, "filesize"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mSize:J

    invoke-static {v2, v3, v4}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "m_title"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "nickname"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "version"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "ui_version"

    iget v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPlatformVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v1, "m_lastupdate"

    iget-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    const-string v1, "local_path"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "local_preview"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 138
    const-string v1, "local_thumbnail"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    const-string v1, "RESOURCE_NVP"

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 140
    return-object v0
.end method

.method protected getPreviewPathPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/app/resourcebrowser/ResourceConstants;->PREVIEW_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mEncodedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2
    .parameter "zipfile"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 231
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, p1, v0, p2}, Lmiui/app/resourcebrowser/ZipResourceInfo;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v1, 0x1

    .line 235
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "zipfile"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 222
    const-string v2, "%s%d.jpg"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    const-string v2, "%s%d.png"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadPreview(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-object v1
.end method

.method protected loadPreviewsFromCache(Lmiui/app/resourcebrowser/ZipResourceCache;)V
    .locals 1
    .parameter "zipResourceCache"

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p1, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPreviews:Ljava/util/ArrayList;

    .line 182
    iget-object v0, p1, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mThumbnails:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected loadResourcePreviews()V
    .locals 10

    .prologue
    .line 187
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    iget-object v8, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 189
    .local v7, zipfile:Ljava/util/zip/ZipFile;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPrefix:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 193
    const-string v5, "preview/"

    .line 194
    .local v5, prefix:Ljava/lang/String;
    iget-object v8, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPrefix:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPrefix:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "big_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    .local v0, biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "small_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 200
    .local v6, smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 201
    invoke-virtual {p0, v7, v5}, Lmiui/app/resourcebrowser/ZipResourceInfo;->loadPreviews(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 205
    move-object v6, v0

    .line 208
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    .end local v0           #biglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #prefix:Ljava/lang/String;
    .end local v6           #smalllist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v8, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iput-object v2, v8, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    .line 213
    iget-object v8, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mZipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;

    iput-object v1, v8, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1           #componentPreview:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #componentThumnail:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v7           #zipfile:Ljava/util/zip/ZipFile;
    :goto_1
    return-void

    .line 214
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 215
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected parseBasicInformation(Ljava/lang/String;)V
    .locals 5
    .parameter "zipFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v1, "platformVersion"

    .line 145
    const-string v1, "description.xml"

    invoke-static {p1, v1}, Lmiui/app/resourcebrowser/ZipFileHelper;->getZipResourceDescribeInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    .line 146
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string v2, "author"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v3

    :goto_1
    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string v2, "designer"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mDesigner:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mDesigner:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v1, v3

    :goto_2
    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mDesigner:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_7

    move-object v1, v3

    :goto_3
    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    .line 156
    :try_start_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string v2, "platformVersion"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string v2, "platformVersion"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPlatformVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_4
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPath:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    .line 169
    :cond_1
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    .line 172
    :cond_2
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    const-string/jumbo v1, "yyyy.MM.d"

    iget-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mLastModified:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    .line 175
    :cond_3
    return-void

    .line 148
    :cond_4
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 150
    :cond_5
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 152
    :cond_6
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mDesigner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 154
    :cond_7
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 159
    :cond_8
    :try_start_1
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mNvp:Ljava/util/HashMap;

    const-string/jumbo v2, "uiVersion"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPlatformVersion:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 161
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lmiui/app/resourcebrowser/ZipResourceInfo;->mPlatformVersion:I

    goto/16 :goto_4
.end method
