.class Lmiui/app/screenelement/MusicControlScreenElement$2;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lmiui/app/screenelement/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    #calls: Lmiui/app/screenelement/MusicControlScreenElement;->updateMusic()V
    invoke-static {v0}, Lmiui/app/screenelement/MusicControlScreenElement;->access$500(Lmiui/app/screenelement/MusicControlScreenElement;)V

    .line 278
    iget-object v0, p0, Lmiui/app/screenelement/MusicControlScreenElement$2;->this$0:Lmiui/app/screenelement/MusicControlScreenElement;

    iget-object v0, v0, Lmiui/app/screenelement/MusicControlScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mView:Landroid/view/View;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method
