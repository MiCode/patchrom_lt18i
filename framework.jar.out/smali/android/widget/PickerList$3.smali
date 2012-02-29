.class Landroid/widget/PickerList$3;
.super Ljava/lang/Object;
.source "PickerList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PickerList;->startLongPressCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PickerList;


# direct methods
.method constructor <init>(Landroid/widget/PickerList;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Landroid/widget/PickerList$3;->this$0:Landroid/widget/PickerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 794
    iget-object v1, p0, Landroid/widget/PickerList$3;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mTouchState:I
    invoke-static {v1}, Landroid/widget/PickerList;->access$1300(Landroid/widget/PickerList;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 795
    iget-object v1, p0, Landroid/widget/PickerList$3;->this$0:Landroid/widget/PickerList;

    iget-object v2, p0, Landroid/widget/PickerList$3;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mTouchStartX:I
    invoke-static {v2}, Landroid/widget/PickerList;->access$1400(Landroid/widget/PickerList;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/PickerList$3;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mTouchStartY:I
    invoke-static {v3}, Landroid/widget/PickerList;->access$1500(Landroid/widget/PickerList;)I

    move-result v3

    #calls: Landroid/widget/PickerList;->getContainingChildIndex(II)I
    invoke-static {v1, v2, v3}, Landroid/widget/PickerList;->access$900(Landroid/widget/PickerList;II)I

    move-result v0

    .line 796
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 797
    iget-object v1, p0, Landroid/widget/PickerList$3;->this$0:Landroid/widget/PickerList;

    #calls: Landroid/widget/PickerList;->longClickChild(I)V
    invoke-static {v1, v0}, Landroid/widget/PickerList;->access$1600(Landroid/widget/PickerList;I)V

    .line 800
    .end local v0           #index:I
    :cond_0
    return-void
.end method
