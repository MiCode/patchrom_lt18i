.class public Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;
.super Lmiui/app/resourcebrowser/DownloadFileTask;
.source "ResourceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadPreviewTask"
.end annotation


# instance fields
.field private offset:I

.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

.field private validIndex:I


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->offset:I

    return v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    iput v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->validIndex:I

    .line 854
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 839
    check-cast p1, [Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->onProgressUpdate([Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 858
    iget v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->validIndex:I

    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget v4, v4, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceIndex:I

    if-ne v3, v4, :cond_0

    .line 859
    aget-object v1, p1, v6

    .line 860
    .local v1, entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    if-eqz v1, :cond_1

    .line 861
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->getIndex()I

    move-result v4

    iget v5, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->offset:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lmiui/widget/ScrollableScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 863
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 864
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 865
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #getter for: Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNeedRecyclePreviewList:Ljava/util/ArrayList;
    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$600(Lmiui/app/resourcebrowser/ResourceDetailActivity;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 867
    .restart local v1       #entry:Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;
    :cond_1
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v4, 0x6090062

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 848
    iput p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadPreviewTask;->offset:I

    .line 849
    return-void
.end method
