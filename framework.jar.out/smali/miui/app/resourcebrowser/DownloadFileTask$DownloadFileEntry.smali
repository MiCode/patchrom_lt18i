.class public Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/DownloadFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadFileEntry"
.end annotation


# instance fields
.field private index:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->index:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 131
    iput p1, p0, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->index:I

    .line 132
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 139
    iput-object p1, p0, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->path:Ljava/lang/String;

    .line 140
    return-void
.end method
