.class Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;
.super Ljava/lang/Object;
.source "PhotoStack.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequeryCallback"
.end annotation


# instance fields
.field private final mMediaId:I

.field private final mMime:Ljava/lang/String;

.field private final mOrientation:I

.field private final mRequestId:I

.field private final mSuccess:Z

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStack;IIIILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "requestId"
    .parameter "mediaId"
    .parameter "orientation"
    .parameter "type"
    .parameter "uri"
    .parameter "mime"
    .parameter "success"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mRequestId:I

    .line 254
    iput p3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mMediaId:I

    .line 255
    iput p4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mOrientation:I

    .line 256
    iput p5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mType:I

    .line 257
    iput-object p6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mUri:Landroid/net/Uri;

    .line 258
    iput-object p7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mMime:Ljava/lang/String;

    .line 259
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mSuccess:Z

    .line 260
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->removeRequeryCallback(Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V

    .line 270
    return-void
.end method

.method public onRequeryComplete()V
    .locals 8

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mRequestId:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mMediaId:I

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mOrientation:I

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mType:I

    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mMime:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->mSuccess:Z

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->onPostAddComplete(IIIILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStack;IIIILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStack;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStack;->removeRequeryCallback(Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack;->access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStack;Lcom/sonyericsson/android/camera/photostack/PhotoStack$RequeryCallback;)V

    .line 266
    return-void
.end method
