.class public Lmiui/app/resourcebrowser/CleanCacheTask;
.super Landroid/os/AsyncTask;
.source "CleanCacheTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/CleanCacheTask$1;,
        Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final KEEP_NUMBERS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiui/app/resourcebrowser/CleanCacheTask;->KEEP_NUMBERS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    return-void
.end method

.method private deleteFilesByAccessTime(Ljava/lang/String;I)V
    .locals 7
    .parameter "dirPath"
    .parameter "keepNumber"

    .prologue
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, fileEntries:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 37
    .local v3, files:[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 38
    new-instance v2, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;-><init>(Lmiui/app/resourcebrowser/CleanCacheTask;Lmiui/app/resourcebrowser/CleanCacheTask$1;)V

    .line 39
    .local v2, fileEntry:Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;
    aget-object v5, v3, v4

    iput-object v5, v2, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->file:Ljava/io/File;

    .line 40
    iget-object v5, v2, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->file:Ljava/io/File;

    invoke-direct {p0, v5}, Lmiui/app/resourcebrowser/CleanCacheTask;->getFileAccessTime(Ljava/io/File;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->accessTime:Ljava/lang/Long;

    .line 41
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    .end local v2           #fileEntry:Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    move v4, p2

    .end local p0
    .restart local v4       #i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 46
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;

    iget-object v5, p0, Lmiui/app/resourcebrowser/CleanCacheTask$FileEntry;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method

.method private getFileAccessTime(Ljava/io/File;)J
    .locals 10
    .parameter "file"

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    .line 53
    .local v0, accessTime:J
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "stat -t "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 54
    .local v6, process:Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x400

    invoke-direct {v2, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 55
    .local v2, br:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 57
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, params:[Ljava/lang/String;
    const/16 v7, 0xb

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #params:[Ljava/lang/String;
    .end local v6           #process:Ljava/lang/Process;
    :goto_0
    return-wide v0

    .line 60
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #process:Ljava/lang/Process;
    :cond_0
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to get access time for file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 62
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #process:Ljava/lang/Process;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 63
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 65
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/CleanCacheTask;->doInBackground([Landroid/util/Pair;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/Pair;)Ljava/lang/Void;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, params:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 24
    aget-object v4, p1, v5

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 25
    .local v0, cacheType:I
    aget-object v4, p1, v5

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 26
    .local v3, resourceSetCode:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmiui/app/resourcebrowser/ResourceConstants;->PATHS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, dirPath:Ljava/lang/String;
    sget-object v4, Lmiui/app/resourcebrowser/CleanCacheTask;->KEEP_NUMBERS:[I

    aget v2, v4, v0

    .line 28
    .local v2, keepNumber:I
    invoke-direct {p0, v1, v2}, Lmiui/app/resourcebrowser/CleanCacheTask;->deleteFilesByAccessTime(Ljava/lang/String;I)V

    .line 29
    const/4 v4, 0x0

    return-object v4
.end method
