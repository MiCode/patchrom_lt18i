.class Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;
.super Ljava/lang/Object;
.source "MpoReader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/mpo/MpoReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenMpoFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;->mFileName:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/android/camera3d/mpo/MpoReader$MpoFormatException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;->mFileName:Ljava/lang/String;

    #calls: Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->native_openMpoFile(Ljava/lang/String;)J
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader;->access$000(Ljava/lang/String;)J

    move-result-wide v0

    .line 75
    .local v0, cppObjId:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/mpo/MpoReader$OpenMpoFileTask;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
