.class Landroid/webkit/PostData;
.super Ljava/io/InputStream;
.source "PostData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/PostData$DataStream;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "PostData"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mMark:I

.field private mPos:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/webkit/PostData;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    .line 45
    iput v1, p0, Landroid/webkit/PostData;->mPos:I

    .line 46
    iput v1, p0, Landroid/webkit/PostData;->mMark:I

    .line 47
    return-void
.end method

.method private appendData([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    new-instance v1, Landroid/webkit/PostData$DataStream;

    invoke-direct {v1, p0, p1}, Landroid/webkit/PostData$DataStream;-><init>(Landroid/webkit/PostData;[B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method private appendFile(Ljava/lang/String;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Landroid/webkit/PostData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, n:I
    iget v0, p0, Landroid/webkit/PostData;->mPos:I

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/2addr v1, v2

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    .line 122
    iput v2, p0, Landroid/webkit/PostData;->mPos:I

    .line 123
    iput v2, p0, Landroid/webkit/PostData;->mMark:I

    .line 124
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 80
    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/webkit/PostData$DataStream;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/PostData$DataStream;

    .line 82
    .local v2, stream:Landroid/webkit/PostData$DataStream;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/webkit/PostData$DataStream;->getBuf()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v0, dataString:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v3, 0x1

    .line 89
    .end local v0           #dataString:Ljava/lang/String;
    .end local v2           #stream:Landroid/webkit/PostData$DataStream;
    :goto_1
    return v3

    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 133
    iget v0, p0, Landroid/webkit/PostData;->mPos:I

    iput v0, p0, Landroid/webkit/PostData;->mMark:I

    .line 134
    iget v0, p0, Landroid/webkit/PostData;->mMark:I

    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iget v1, p0, Landroid/webkit/PostData;->mMark:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, -0x1

    .line 162
    .local v0, n:I
    :goto_0
    iget v1, p0, Landroid/webkit/PostData;->mPos:I

    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 164
    if-ltz v0, :cond_1

    .line 170
    :cond_0
    return v0

    .line 167
    :cond_1
    iget v1, p0, Landroid/webkit/PostData;->mPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/PostData;->mPos:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "b == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    array-length v2, p1

    if-gt p2, v2, :cond_1

    if-gez p2, :cond_2

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    if-ltz p3, :cond_3

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_4

    .line 204
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_4
    const/4 v1, 0x0

    .line 207
    .local v1, n:I
    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 208
    const/4 v2, -0x1

    .line 221
    :goto_0
    return v2

    .line 210
    :cond_5
    :goto_1
    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    iget-object v3, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    if-lez p3, :cond_7

    .line 211
    iget-object v2, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    iget v3, p0, Landroid/webkit/PostData;->mPos:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 212
    .local v0, k:I
    if-gez v0, :cond_6

    .line 213
    iget v2, p0, Landroid/webkit/PostData;->mPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/webkit/PostData;->mPos:I

    goto :goto_1

    .line 215
    :cond_6
    sub-int/2addr p3, v0

    .line 216
    add-int/2addr p2, v0

    .line 217
    add-int/2addr v1, v0

    goto :goto_1

    .end local v0           #k:I
    :cond_7
    move v2, v1

    .line 221
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/webkit/PostData;->mMark:I

    iput v1, p0, Landroid/webkit/PostData;->mPos:I

    .line 235
    iget v0, p0, Landroid/webkit/PostData;->mPos:I

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v1, p0, Landroid/webkit/PostData;->mEntries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    monitor-exit p0

    return-void

    .line 234
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
