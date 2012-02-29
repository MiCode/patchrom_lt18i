.class Landroid/widget/PickerList$4;
.super Ljava/lang/Object;
.source "PickerList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PickerList;->finalizeAndExitAutoscroll()V
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
    .line 1237
    iput-object p1, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1239
    iget-object v1, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    iget-object v2, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mLastItemPosition:I
    invoke-static {v2}, Landroid/widget/PickerList;->access$1700(Landroid/widget/PickerList;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mFirstItemPosition:I
    invoke-static {v3}, Landroid/widget/PickerList;->access$1800(Landroid/widget/PickerList;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    #calls: Landroid/widget/PickerList;->getAdapterPosition(I)I
    invoke-static {v1, v2}, Landroid/widget/PickerList;->access$1000(Landroid/widget/PickerList;I)I

    move-result v0

    .line 1241
    .local v0, newCurrentPosition:I
    iget-object v1, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mCurrentPosition:I
    invoke-static {v1}, Landroid/widget/PickerList;->access$000(Landroid/widget/PickerList;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1243
    iget-object v1, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    #setter for: Landroid/widget/PickerList;->mCurrentPosition:I
    invoke-static {v1, v0}, Landroid/widget/PickerList;->access$002(Landroid/widget/PickerList;I)I

    .line 1244
    iget-object v1, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    #calls: Landroid/widget/PickerList;->notifyPositionChanged()V
    invoke-static {v1}, Landroid/widget/PickerList;->access$1100(Landroid/widget/PickerList;)V

    .line 1246
    :cond_0
    iget-object v1, p0, Landroid/widget/PickerList$4;->this$0:Landroid/widget/PickerList;

    const/4 v2, 0x0

    #calls: Landroid/widget/PickerList;->setState(I)V
    invoke-static {v1, v2}, Landroid/widget/PickerList;->access$1900(Landroid/widget/PickerList;I)V

    .line 1247
    return-void
.end method
