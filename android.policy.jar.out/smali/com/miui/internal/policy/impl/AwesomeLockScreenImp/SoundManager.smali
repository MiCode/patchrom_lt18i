.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lmiui/app/screenelement/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V
    .locals 4
    .parameter "context"
    .parameter "rm"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    .line 33
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 35
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 36
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    return-void
.end method

.method private playSoundImp(IZ)V
    .locals 10
    .parameter "sound"
    .parameter "stopCur"

    .prologue
    const/high16 v2, 0x3f80

    .line 69
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 71
    .local v9, sd:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 73
    .end local v9           #sd:Ljava/lang/Integer;
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 77
    .local v7, cur:I
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 82
    if-nez p3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->playSoundImp(IZ)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public playSound(Ljava/lang/String;Z)V
    .locals 10
    .parameter "sound"
    .parameter "stopCur"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 44
    .local v9, sd:Ljava/lang/Integer;
    if-nez v9, :cond_2

    .line 45
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v8

    .line 47
    .local v8, file:Landroid/os/MemoryFile;
    :try_start_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 48
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 51
    .local v7, e:Ljava/io/IOException;
    const-string v0, "Lockscreen_SoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to load sound. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #file:Landroid/os/MemoryFile;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->playSoundImp(IZ)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 66
    :cond_0
    return-void
.end method
