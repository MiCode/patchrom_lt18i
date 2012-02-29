.class final Landroid/app/ContextImpl$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final databaseExcludeFiles:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-journal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-wal"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-shm"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/app/ContextImpl$1;->databaseExcludeFiles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/app/ContextImpl$1;->databaseExcludeFiles:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 242
    .local v1, exclude:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const/4 v4, 0x0

    .line 246
    .end local v1           #exclude:Ljava/lang/String;
    :goto_1
    return v4

    .line 241
    .restart local v1       #exclude:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v1           #exclude:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method
