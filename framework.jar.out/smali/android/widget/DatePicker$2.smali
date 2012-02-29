.class Landroid/widget/DatePicker$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/PickerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 162
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #setter for: Landroid/widget/DatePicker;->mMonth:I
    invoke-static {v0, p1}, Landroid/widget/DatePicker;->access$302(Landroid/widget/DatePicker;I)I

    .line 163
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->adjustMaxDay()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)V

    .line 164
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)V

    .line 165
    iget-object v0, p0, Landroid/widget/DatePicker$2;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->updateDaySpinner()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;)V

    .line 166
    return-void
.end method
