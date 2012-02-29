.class Landroid/widget/PickerList$1;
.super Landroid/database/DataSetObserver;
.source "PickerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PickerList;->setAdapter(Landroid/widget/Adapter;)V
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
    .line 226
    iput-object p1, p0, Landroid/widget/PickerList$1;->this$0:Landroid/widget/PickerList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/widget/PickerList$1;->this$0:Landroid/widget/PickerList;

    iget-object v1, p0, Landroid/widget/PickerList$1;->this$0:Landroid/widget/PickerList;

    #getter for: Landroid/widget/PickerList;->mCurrentPosition:I
    invoke-static {v1}, Landroid/widget/PickerList;->access$000(Landroid/widget/PickerList;)I

    move-result v1

    #calls: Landroid/widget/PickerList;->centerItem(I)Z
    invoke-static {v0, v1}, Landroid/widget/PickerList;->access$100(Landroid/widget/PickerList;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/widget/PickerList$1;->this$0:Landroid/widget/PickerList;

    const/4 v1, 0x1

    #setter for: Landroid/widget/PickerList;->mPendingLayoutRequest:Z
    invoke-static {v0, v1}, Landroid/widget/PickerList;->access$202(Landroid/widget/PickerList;Z)Z

    .line 232
    :cond_0
    return-void
.end method
