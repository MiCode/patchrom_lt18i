.class Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;
.super Ljava/lang/Object;
.source "CleanCacheTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/CleanCacheTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public accessTime:Ljava/lang/Long;

.field public file:Ljava/io/File;

.field final synthetic this$0:Lmiui/app/resourcebrowser/CleanCacheTask;


# direct methods
.method private constructor <init>(Lmiui/app/resourcebrowser/CleanCacheTask;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->this$0:Lmiui/app/resourcebrowser/CleanCacheTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/resourcebrowser/CleanCacheTask;Lmiui/app/resourcebrowser/CleanCacheTask$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;-><init>(Lmiui/app/resourcebrowser/CleanCacheTask;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->compareTo(Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 78
    iget-object v0, p0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->accessTime:Ljava/lang/Long;

    iget-object v1, p1, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->accessTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 83
    instance-of v2, p1, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;

    if-eqz v2, :cond_0

    .line 84
    move-object v0, p1

    check-cast v0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;

    move-object v1, v0

    .line 85
    .local v1, f:Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;
    iget-object v2, p0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .end local v1           #f:Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
