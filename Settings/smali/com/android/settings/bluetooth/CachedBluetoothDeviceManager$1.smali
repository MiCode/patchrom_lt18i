.class Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->showUnbondMessage(Landroid/bluetooth/BluetoothDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic this$0:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field final synthetic val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->this$0:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iput-object p2, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->val$cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager$1;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->pair()V

    .line 216
    return-void
.end method
