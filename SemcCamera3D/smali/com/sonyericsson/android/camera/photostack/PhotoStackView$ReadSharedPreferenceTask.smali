.class Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;
.super Landroid/os/AsyncTask;
.source "PhotoStackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadSharedPreferenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "args"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sonyericsson.android.camera.photostack_sharedprefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->access$302(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->access$300(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->access$402(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackView;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->readSharedPref()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->access$500(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V

    .line 169
    return-void
.end method
