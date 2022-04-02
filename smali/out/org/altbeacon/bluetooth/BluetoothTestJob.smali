.class public Lorg/altbeacon/bluetooth/BluetoothTestJob;
.super Landroid/app/job/JobService;
.source "BluetoothTestJob.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sOverrideJobId:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 28
    sput v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->sOverrideJobId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 82
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_10

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothTestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    :cond_10
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_21

    .line 88
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    .line 91
    :cond_21
    iget-object v0, p0, Lorg/altbeacon/bluetooth/BluetoothTestJob;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;

    invoke-direct {v1, p0, p1}, Lorg/altbeacon/bluetooth/BluetoothTestJob$1;-><init>(Lorg/altbeacon/bluetooth/BluetoothTestJob;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
