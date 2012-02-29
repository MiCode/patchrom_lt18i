.class Landroid/widget/EditableListView$EditableListData;
.super Landroid/database/DataSetObserver;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/EditableListView$EditableListViewCheckable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EditableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditableListData"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCheckedIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEditMode:Ljava/lang/Boolean;

.field private mEditModeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/EditableListView$EditModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerDateSetChange:Z

.field private mIsCheckDataDirty:Z

.field private mToggleIndex:Ljava/lang/Integer;

.field final synthetic this$0:Landroid/widget/EditableListView;


# direct methods
.method protected constructor <init>(Landroid/widget/EditableListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 378
    iput-object p1, p0, Landroid/widget/EditableListView$EditableListData;->this$0:Landroid/widget/EditableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 380
    iput-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    .line 383
    iput-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    .line 385
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    .line 386
    return-void
.end method

.method static synthetic access$100(Landroid/widget/EditableListView$EditableListData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/EditableListView$EditableListData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->exitEditMode()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/EditableListView$EditableListData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->hasAdapter()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EditableListView$EditableListData;Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/EditableListView$EditableListData;Landroid/widget/EditableListView$EditModeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/EditableListView$EditableListData;Landroid/widget/EditableListView$EditModeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->deleteEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/EditableListView$EditableListData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->isInitState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/EditableListView$EditableListData;I)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->toggleAt(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/EditableListView$EditableListData;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->enterEditMode(Ljava/lang/Integer;)V

    return-void
.end method

.method private addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    return-void
.end method

.method private cleanupCheckedData()V
    .locals 5

    .prologue
    .line 608
    iget-boolean v3, p0, Landroid/widget/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    if-eqz v3, :cond_2

    .line 609
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 610
    .local v2, tempCheckedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 611
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 612
    invoke-direct {p0, v0}, Landroid/widget/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 613
    .local v1, id:Ljava/lang/Long;
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    iput-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    .line 619
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 621
    .end local v0           #i:I
    .end local v2           #tempCheckedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private deleteEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "editModeListener"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 396
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    return-void
.end method

.method private enterEditMode(Ljava/lang/Integer;)V
    .locals 4
    .parameter "initPosition"

    .prologue
    const/4 v3, 0x1

    .line 442
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_4

    .line 443
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    .line 444
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 445
    iput-object p1, p0, Landroid/widget/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    .line 446
    if-eqz p1, :cond_1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/EditableListView$EditableListData;->innerToggleAt(I)Z

    .line 449
    :cond_1
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_2

    .line 450
    iput-boolean v3, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 451
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 453
    :cond_2
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 454
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_3

    .line 455
    invoke-interface {v0}, Landroid/widget/EditableListView$EditModeListener;->onEnterEditMode()V

    .line 456
    invoke-interface {v0, p0}, Landroid/widget/EditableListView$EditModeListener;->onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    goto :goto_0

    .line 460
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private exitEditMode()V
    .locals 3

    .prologue
    .line 463
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    .line 464
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    .line 465
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 467
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_0

    .line 468
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 469
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 471
    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 472
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0}, Landroid/widget/EditableListView$EditModeListener;->onExitEditMode()V

    goto :goto_0

    .line 477
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private getIdFromPosition(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/EditableListView$EditableListIdMapper;

    if-eqz v0, :cond_0

    .line 436
    iget-object p0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    .end local p0
    check-cast p0, Landroid/widget/EditableListView$EditableListIdMapper;

    invoke-interface {p0, p1}, Landroid/widget/EditableListView$EditableListIdMapper;->mapPositionToId(I)J

    move-result-wide v0

    .line 438
    :goto_0
    return-wide v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasAdapter()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private innerToggleAt(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v0

    .line 491
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 493
    const/4 v2, 0x0

    .line 496
    :goto_0
    return v2

    .line 495
    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isEditMode()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private isInitState()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCheckStateChanged(Ljava/lang/Integer;)V
    .locals 3
    .parameter "lastTogglePositon"

    .prologue
    .line 480
    iput-object p1, p0, Landroid/widget/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    .line 481
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditModeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView$EditModeListener;

    .line 482
    .local v0, eml:Landroid/widget/EditableListView$EditModeListener;
    if-eqz v0, :cond_0

    .line 483
    invoke-interface {v0, p0}, Landroid/widget/EditableListView$EditModeListener;->onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V

    goto :goto_0

    .line 486
    .end local v0           #eml:Landroid/widget/EditableListView$EditModeListener;
    :cond_1
    return-void
.end method

.method private setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    const/4 v1, 0x1

    .line 405
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 409
    :cond_0
    iput-object p1, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    .line 410
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 415
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/EditableListView$EditableListIdMapper;

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 419
    :cond_1
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 422
    :cond_2
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 423
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 424
    iput-boolean v1, p0, Landroid/widget/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 426
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 432
    :cond_3
    return-void
.end method

.method private toggleAt(I)Ljava/lang/Boolean;
    .locals 2
    .parameter "position"

    .prologue
    .line 501
    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 502
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->innerToggleAt(I)Z

    move-result v0

    .line 503
    .local v0, ret:Z
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 504
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 506
    .end local v0           #ret:Z
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkAll()V
    .locals 4

    .prologue
    .line 624
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    .line 625
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 626
    invoke-direct {p0, v0}, Landroid/widget/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 627
    .local v1, id:Ljava/lang/Long;
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/BaseAdapter;

    if-eqz v2, :cond_1

    .line 630
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 631
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 633
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/widget/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 635
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method public checkNothing()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 640
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 642
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 644
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 646
    :cond_1
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 577
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 578
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckStateById(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 561
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckStateByPos(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 552
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 553
    invoke-direct {p0, p1}, Landroid/widget/EditableListView$EditableListData;->getIdFromPosition(I)J

    move-result-wide v0

    .line 554
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 556
    .end local v0           #id:J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCheckedItemInIds()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 602
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 604
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public getCheckedItemInPositions()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 585
    .local v0, checkedItemIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    .line 586
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 587
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 588
    .local v2, id:Ljava/lang/Long;
    iget-object v3, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Long;
    :cond_0
    return-object v0
.end method

.method public getToggledIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mToggleIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAllChecked()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 569
    invoke-direct {p0}, Landroid/widget/EditableListView$EditableListData;->cleanupCheckedData()V

    .line 570
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 572
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 570
    goto :goto_0

    :cond_1
    move v0, v2

    .line 572
    goto :goto_0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 515
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mInnerDateSetChange:Z

    .line 523
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mCheckedIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 528
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mIdPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/EditableListView$EditableListData;->mIsCheckDataDirty:Z

    .line 530
    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EditableListView$EditableListData;->mEditMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/EditableListView$EditableListData;->notifyCheckStateChanged(Ljava/lang/Integer;)V

    .line 536
    :cond_0
    return-void
.end method
