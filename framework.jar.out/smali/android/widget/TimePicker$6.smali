.class Landroid/widget/TimePicker$6;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;->setFocusStubScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;

.field final synthetic val$focusStub:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Landroid/widget/TimePicker$6;->this$0:Landroid/widget/TimePicker;

    iput-object p2, p0, Landroid/widget/TimePicker$6;->val$focusStub:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChange(Landroid/widget/NumberPicker;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 385
    if-eqz p2, :cond_0

    .line 386
    iget-object v0, p0, Landroid/widget/TimePicker$6;->val$focusStub:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/widget/TimePicker$6;->val$focusStub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 390
    :cond_0
    return-void
.end method
