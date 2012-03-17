.class public Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;
.super Ljava/lang/Object;
.source "VisualFeedbackListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "VisualFeedbackListener"


# instance fields
.field private mButtonListLandscape:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonListPortrait:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSelectable:Z

.field private mSquare:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mSquare:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mIsSelectable:Z

    return-void
.end method

.method public static clearPressed(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter "view"
    .parameter
    .parameter
    .parameter "isSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, landscape:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    .local p2, portrait:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    if-eqz p1, :cond_1

    .line 189
    if-eqz p2, :cond_0

    .line 190
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 192
    .local v0, button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 193
    .local v1, button_p:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->isSelected()Z

    move-result v3

    invoke-static {v0, v3, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 195
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->isSelected()Z

    move-result v3

    invoke-static {v1, v3, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v0           #button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v1           #button_p:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v2           #i:I
    :cond_0
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->clearPressed(Landroid/view/View;Ljava/util/ArrayList;Z)V

    .line 202
    :cond_1
    return-void
.end method

.method public static clearPressed(Landroid/view/View;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "view"
    .parameter
    .parameter "isSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 209
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->isSelected()Z

    move-result v2

    invoke-static {v0, v2, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 212
    .end local v0           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_0
    return-void
.end method

.method public static setPressed(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter "view"
    .parameter
    .parameter
    .parameter "isSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, landscape:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    .local p2, portrait:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    if-eqz p1, :cond_3

    .line 147
    if-eqz p2, :cond_2

    .line 148
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 149
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 150
    .local v0, button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 151
    .local v1, button_p:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonPressed(Landroid/view/View;Z)V

    .line 154
    invoke-static {v1, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonPressed(Landroid/view/View;Z)V

    .line 148
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->clearButtonPressed(Landroid/view/View;)V

    .line 158
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->clearButtonPressed(Landroid/view/View;)V

    goto :goto_1

    .line 162
    .end local v0           #button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v1           #button_p:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v2           #i:I
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setPressed(Landroid/view/View;Ljava/util/ArrayList;Z)V

    .line 165
    :cond_3
    return-void
.end method

.method public static setPressed(Landroid/view/View;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "view"
    .parameter
    .parameter "isSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 172
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonPressed(Landroid/view/View;Z)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->clearButtonPressed(Landroid/view/View;)V

    goto :goto_0

    .line 179
    .end local v0           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_1
    return-void
.end method

.method public static setSelected(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 6
    .parameter "view"
    .parameter
    .parameter
    .parameter "isSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, landscape:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    .local p2, portrait:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    if-eqz p2, :cond_2

    .line 101
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 102
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 103
    .local v0, button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 104
    .local v1, button_p:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    :cond_0
    invoke-static {v0, v5, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 107
    invoke-static {v1, v5, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 101
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {v0, v4, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 112
    invoke-static {v1, v4, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 117
    .end local v0           #button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v1           #button_p:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v2           #i:I
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setSelected(Landroid/view/View;Ljava/util/ArrayList;Z)V

    .line 120
    :cond_3
    return-void
.end method

.method public static setSelected(Landroid/view/View;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "view"
    .parameter
    .parameter "isSquare"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 128
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x1

    invoke-static {v0, v2, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 132
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 137
    .end local v0           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public isSelectable()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mIsSelectable:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListLandscape:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListPortrait:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mSquare:Z

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setPressed(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListLandscape:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListPortrait:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mSquare:Z

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->clearPressed(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListLandscape:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListPortrait:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mSquare:Z

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setSelected(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListLandscape:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListPortrait:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mSquare:Z

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->clearPressed(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, landscape:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    .local p2, portrait:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListLandscape:Ljava/util/ArrayList;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mButtonListPortrait:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mIsSelectable:Z

    .line 51
    return-void
.end method

.method public setSquare(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->mSquare:Z

    .line 47
    return-void
.end method
