.class public Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderInfo"
.end annotation


# instance fields
.field public files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public filesCount:I

.field public ids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public modifiedTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->ids:Ljava/util/Map;

    return-void
.end method
