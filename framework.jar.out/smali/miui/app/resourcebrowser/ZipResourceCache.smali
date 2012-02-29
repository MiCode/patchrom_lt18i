.class public abstract Lmiui/app/resourcebrowser/ZipResourceCache;
.super Ljava/lang/Object;
.source "ZipResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ZipResourceCache$DefaultZipCacheImpl;
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public designer:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public lastModifyTime:J

.field public nvp:Ljava/util/HashMap;
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

.field public platformVersion:I

.field public previews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public thumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->nvp:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    .line 119
    return-void
.end method


# virtual methods
.method protected imageCached()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected readBaiscInformation(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->filePath:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->fileSize:J

    .line 55
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->lastModifyTime:J

    .line 57
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->title:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->designer:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->author:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->version:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->platformVersion:I

    .line 62
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->nvp:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method public final readCache(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ZipResourceCache;->readBaiscInformation(Ljava/io/ObjectInputStream;)V

    .line 98
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ZipResourceCache;->readImageInformation(Ljava/io/ObjectInputStream;)V

    .line 99
    return-void
.end method

.method protected readImageInformation(Ljava/io/ObjectInputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 77
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 81
    .restart local v4       #str:Ljava/lang/String;
    iget-object v5, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v4           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public valid()Z
    .locals 6

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, ret:Z
    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 113
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, file:Ljava/io/File;
    iget-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->lastModifyTime:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->fileSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ZipResourceCache;->imageCached()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 116
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 114
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method protected writeBaiscInformation(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    iget-wide v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->fileSize:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->lastModifyTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 43
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->designer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 47
    iget v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->platformVersion:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->nvp:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public final writeCache(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ZipResourceCache;->writeBaiscInformation(Ljava/io/ObjectOutputStream;)V

    .line 90
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ZipResourceCache;->writeImageInformation(Ljava/io/ObjectOutputStream;)V

    .line 91
    return-void
.end method

.method protected writeImageInformation(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 67
    .local v0, tmp:[Ljava/lang/String;
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipResourceCache;->previews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
