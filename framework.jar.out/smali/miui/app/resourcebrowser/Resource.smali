.class public Lmiui/app/resourcebrowser/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mInformation:Landroid/os/Bundle;

.field private mLocalPath:Ljava/lang/String;

.field private mLocalPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModifiedTime:J

.field private mOnlinePath:Ljava/lang/String;

.field private mOnlinePreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlineThumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformVersion:I

.field private mStatus:I

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalThumbnails:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPreviews:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlineThumbnails:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePreviews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 169
    instance-of v2, p1, Lmiui/app/resourcebrowser/Resource;

    if-nez v2, :cond_0

    .line 170
    const/4 v2, 0x0

    .line 173
    :goto_0
    return v2

    .line 172
    :cond_0
    move-object v0, p1

    check-cast v0, Lmiui/app/resourcebrowser/Resource;

    move-object v1, v0

    .line 173
    .local v1, r:Lmiui/app/resourcebrowser/Resource;
    iget-object v2, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInformation()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mInformation:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPreview(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 99
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 102
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPreviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getLocalPreviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPreviews:Ljava/util/List;

    return-object v0
.end method

.method public getLocalThumbnail(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalThumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalThumbnails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getLocalThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalThumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lmiui/app/resourcebrowser/Resource;->mModifiedTime:J

    return-wide v0
.end method

.method public getOnlinePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlinePreview(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePreviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getOnlinePreviews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePreviews:Ljava/util/List;

    return-object v0
.end method

.method public getOnlineThumbnail(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 118
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlineThumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlineThumbnails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getOnlineThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mOnlineThumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getPlatformVersion()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lmiui/app/resourcebrowser/Resource;->mPlatformVersion:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lmiui/app/resourcebrowser/Resource;->mStatus:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lmiui/app/resourcebrowser/Resource;->mVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 33
    iput-object p1, p0, Lmiui/app/resourcebrowser/Resource;->mId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setInformation(Landroid/os/Bundle;)V
    .locals 8
    .parameter "information"

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/app/resourcebrowser/Resource;->mInformation:Landroid/os/Bundle;

    .line 42
    const-string v6, "local_thumbnail"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 43
    .local v3, localThumbnails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 44
    iput-object v3, p0, Lmiui/app/resourcebrowser/Resource;->mLocalThumbnails:Ljava/util/List;

    .line 46
    :cond_0
    const-string v6, "local_preview"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    .local v2, localPreviews:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 48
    iput-object v2, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPreviews:Ljava/util/List;

    .line 50
    :cond_1
    const-string v6, "online_thumbnail"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 51
    .local v5, onlineThumbnails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 52
    iput-object v5, p0, Lmiui/app/resourcebrowser/Resource;->mOnlineThumbnails:Ljava/util/List;

    .line 54
    :cond_2
    const-string v6, "online_preview"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 55
    .local v4, onlinePreviews:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 56
    iput-object v4, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePreviews:Ljava/util/List;

    .line 59
    :cond_3
    const-string v6, "local_path"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPath:Ljava/lang/String;

    .line 60
    const-string v6, "online_path"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePath:Ljava/lang/String;

    .line 62
    :try_start_0
    const-string/jumbo v6, "version"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lmiui/app/resourcebrowser/Resource;->mVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    const-string/jumbo v6, "ui_version"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lmiui/app/resourcebrowser/Resource;->mPlatformVersion:I

    .line 67
    const-string v6, "m_lastupdate"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lmiui/app/resourcebrowser/Resource;->mModifiedTime:J

    .line 69
    const-string/jumbo v6, "x_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 71
    iput-object v1, p0, Lmiui/app/resourcebrowser/Resource;->mId:Ljava/lang/String;

    .line 73
    :cond_4
    return-void

    .line 63
    .end local v1           #id:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 64
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput v6, p0, Lmiui/app/resourcebrowser/Resource;->mVersion:I

    goto :goto_0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 80
    iput-object p1, p0, Lmiui/app/resourcebrowser/Resource;->mLocalPath:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0
    .parameter "modifiedTime"

    .prologue
    .line 164
    iput-wide p1, p0, Lmiui/app/resourcebrowser/Resource;->mModifiedTime:J

    .line 165
    return-void
.end method

.method public setOnlinePath(Ljava/lang/String;)V
    .locals 0
    .parameter "onlinePath"

    .prologue
    .line 110
    iput-object p1, p0, Lmiui/app/resourcebrowser/Resource;->mOnlinePath:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setPlatformVersion(I)V
    .locals 0
    .parameter "platformVersion"

    .prologue
    .line 148
    iput p1, p0, Lmiui/app/resourcebrowser/Resource;->mPlatformVersion:I

    .line 149
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 156
    iput p1, p0, Lmiui/app/resourcebrowser/Resource;->mStatus:I

    .line 157
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 140
    iput p1, p0, Lmiui/app/resourcebrowser/Resource;->mVersion:I

    .line 141
    return-void
.end method
