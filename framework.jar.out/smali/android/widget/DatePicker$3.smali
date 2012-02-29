.class Landroid/widget/DatePicker$3;
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
    .line 173
    iput-object p1, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 176
    :try_start_0
    iget-object v2, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mDateHandler:Landroid/widget/DateHandler;
    invoke-static {v2}, Landroid/widget/DatePicker;->access$000(Landroid/widget/DatePicker;)Landroid/widget/DateHandler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DateHandler;->getYears()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, year:Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Landroid/widget/DatePicker;->mYear:I
    invoke-static {v2, v3}, Landroid/widget/DatePicker;->access$602(Landroid/widget/DatePicker;I)I

    .line 178
    iget-object v2, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->adjustMaxDay()V
    invoke-static {v2}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)V

    .line 179
    iget-object v2, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v2}, Landroid/widget/DatePicker;->access$200(Landroid/widget/DatePicker;)V

    .line 180
    iget-object v2, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->updateDaySpinner()V
    invoke-static {v2}, Landroid/widget/DatePicker;->access$500(Landroid/widget/DatePicker;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #year:Ljava/lang/String;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 182
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
