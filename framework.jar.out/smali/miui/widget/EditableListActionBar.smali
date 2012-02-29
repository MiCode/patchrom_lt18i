.class public Lmiui/widget/EditableListActionBar;
.super Landroid/widget/LinearLayout;
.source "EditableListActionBar.java"

# interfaces
.implements Landroid/widget/EditableListView$EditModeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;
    }
.end annotation


# instance fields
.field private adapterCheckable:Landroid/widget/EditableListView$EditableListViewCheckable;

.field private mOnButtonBarClickListener:Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 48
    return-void
.end method

.method public getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/widget/EditableListActionBar;->adapterCheckable:Landroid/widget/EditableListView$EditableListViewCheckable;

    return-object v0
.end method

.method public final onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 42
    iput-object p1, p0, Lmiui/widget/EditableListActionBar;->adapterCheckable:Landroid/widget/EditableListView$EditableListViewCheckable;

    .line 43
    invoke-virtual {p0, p1}, Lmiui/widget/EditableListActionBar;->checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lmiui/widget/EditableListActionBar;->mOnButtonBarClickListener:Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lmiui/widget/EditableListActionBar;->mOnButtonBarClickListener:Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {p0}, Lmiui/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final onEnterEditMode()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/EditableListActionBar;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public final onExitEditMode()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmiui/widget/EditableListActionBar;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public setOnButtonBarClickListener(Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;)V
    .locals 0
    .parameter "onButtonBarClickListener"

    .prologue
    .line 55
    iput-object p1, p0, Lmiui/widget/EditableListActionBar;->mOnButtonBarClickListener:Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;

    .line 56
    return-void
.end method
