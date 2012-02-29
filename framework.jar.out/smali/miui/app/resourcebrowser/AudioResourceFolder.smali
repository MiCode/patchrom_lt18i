.class public Lmiui/app/resourcebrowser/AudioResourceFolder;
.super Lmiui/app/resourcebrowser/ResourceFolder;
.source "AudioResourceFolder.java"


# static fields
.field private static final COMMON_RINGTONE_SUFFIX:[Ljava/lang/String;


# instance fields
.field private mDefaultOption:Lmiui/app/resourcebrowser/Resource;

.field private mDefaultUri:Landroid/net/Uri;

.field private mDurationLimitation:I

.field private mMuteOption:Lmiui/app/resourcebrowser/Resource;

.field private mRingtoneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".ogg"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/app/resourcebrowser/AudioResourceFolder;->COMMON_RINGTONE_SUFFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 20
    const v0, 0x7fffffff

    iput v0, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDurationLimitation:I

    .line 34
    iget-object v0, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mRingtoneType:I

    .line 35
    return-void
.end method

.method private getTitleForDefaultUri()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    const v0, 0x6090045

    .line 103
    .local v0, resId:I
    iget v3, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mRingtoneType:I

    packed-switch v3, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, songName:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    const v4, 0x609000b

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/app/resourcebrowser/AudioResourceFolder;->removeFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v1, ""

    .line 119
    .local v1, retTitle:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_1
    return-object v1

    .line 105
    .end local v1           #retTitle:Ljava/lang/String;
    .end local v2           #songName:Ljava/lang/String;
    :pswitch_1
    const v0, 0x6090046

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    const v0, 0x6090047

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    const v0, 0x6090048

    goto :goto_0

    .line 122
    .restart local v1       #retTitle:Ljava/lang/String;
    .restart local v2       #songName:Ljava/lang/String;
    :cond_0
    const-string v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private removeFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "fileName"

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, ingoreCaseName:Ljava/lang/String;
    sget-object v0, Lmiui/app/resourcebrowser/AudioResourceFolder;->COMMON_RINGTONE_SUFFIX:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 132
    .local v4, suffix:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const/4 v5, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 137
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #ingoreCaseName:Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #suffix:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 131
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #ingoreCaseName:Ljava/lang/String;
    .restart local v3       #len$:I
    .restart local v4       #suffix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #ingoreCaseName:Ljava/lang/String;
    .end local v3           #len$:I
    .end local v4           #suffix:Ljava/lang/String;
    :cond_1
    move-object v5, p1

    .line 137
    goto :goto_1
.end method


# virtual methods
.method protected addItem(Ljava/lang/String;)V
    .locals 6
    .parameter "filePath"

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    .line 144
    .local v0, duration:J
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 145
    .local v3, mediaPlayer:Landroid/media/MediaPlayer;
    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 147
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    int-to-long v0, v4

    .line 155
    .end local v3           #mediaPlayer:Landroid/media/MediaPlayer;
    :goto_0
    iget-object v4, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void

    .line 148
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 149
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 151
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 153
    .local v2, e:Ljava/io/IOException;
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 160
    iget-object v4, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 161
    .local v0, duration:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDurationLimitation:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 162
    :cond_0
    const/4 v4, 0x0

    .line 169
    :goto_0
    return-object v4

    .line 165
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;

    move-result-object v3

    .line 166
    .local v3, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v3}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    .line 167
    .local v2, information:Landroid/os/Bundle;
    const-string v4, "m_title"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmiui/app/resourcebrowser/AudioResourceFolder;->removeFileNameSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3, v2}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    move-object v4, v3

    .line 169
    goto :goto_0
.end method

.method public enableDefaultOption(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 57
    if-eqz p1, :cond_5

    .line 58
    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v6, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    .line 59
    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    .line 60
    iget v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mRingtoneType:I

    packed-switch v5, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 73
    iput-object v7, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultOption:Lmiui/app/resourcebrowser/Resource;

    .line 99
    :goto_1
    return-void

    .line 62
    :pswitch_1
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 65
    :pswitch_2
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 76
    :cond_1
    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v5, v6}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_2
    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    move-wide v2, v5

    .line 87
    .local v2, fileSize:J
    :goto_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v4, information:Landroid/os/Bundle;
    const-string v5, "m_title"

    invoke-direct {p0}, Lmiui/app/resourcebrowser/AudioResourceFolder;->getTitleForDefaultUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "filesize"

    iget-object v6, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v3}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "m_lastupdate"

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    const-string v5, "local_path"

    iget-object v6, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v5, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v5}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    iput-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultOption:Lmiui/app/resourcebrowser/Resource;

    .line 95
    iget-object v5, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultOption:Lmiui/app/resourcebrowser/Resource;

    invoke-virtual {v5, v4}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    goto :goto_1

    .line 81
    .end local v0           #file:Ljava/io/File;
    .end local v2           #fileSize:J
    .end local v4           #information:Landroid/os/Bundle;
    :cond_3
    const-string v1, ""

    goto :goto_2

    .restart local v0       #file:Ljava/io/File;
    :cond_4
    move-wide v2, v8

    .line 85
    goto :goto_3

    .line 97
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filePath:Ljava/lang/String;
    :cond_5
    iput-object v7, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultOption:Lmiui/app/resourcebrowser/Resource;

    goto/16 :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public enableMuteOption(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    const-wide/16 v4, 0x0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, information:Landroid/os/Bundle;
    const-string v1, "m_title"

    iget-object v2, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    const v3, 0x6090044

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "filesize"

    iget-object v2, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "m_lastupdate"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    const-string v1, "local_path"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    iput-object v1, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMuteOption:Lmiui/app/resourcebrowser/Resource;

    .line 50
    iget-object v1, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMuteOption:Lmiui/app/resourcebrowser/Resource;

    invoke-virtual {v1, v0}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 54
    .end local v0           #information:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMuteOption:Lmiui/app/resourcebrowser/Resource;

    goto :goto_0
.end method

.method public loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, task:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/Resource;>.AsyncLoadDataTask;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMuteOption:Lmiui/app/resourcebrowser/Resource;

    if-eqz v0, :cond_0

    .line 175
    new-array v0, v3, [Lmiui/app/resourcebrowser/Resource;

    iget-object v1, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mMuteOption:Lmiui/app/resourcebrowser/Resource;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultOption:Lmiui/app/resourcebrowser/Resource;

    if-eqz v0, :cond_1

    .line 178
    new-array v0, v3, [Lmiui/app/resourcebrowser/Resource;

    iget-object v1, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDefaultOption:Lmiui/app/resourcebrowser/Resource;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    .line 180
    :cond_1
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V

    .line 181
    return-void
.end method

.method public setDurationLimitation(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 38
    iput p1, p0, Lmiui/app/resourcebrowser/AudioResourceFolder;->mDurationLimitation:I

    .line 39
    return-void
.end method
