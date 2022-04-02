.class final Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;
.super Lcom/google/android/gms/internal/common/zzi;
.source "com.google.android.gms:play-services-basement@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static zza(Landroid/os/Message;)V
    .registers 1

    .line 53
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzb()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzd()V

    return-void
.end method

.method private static zzb(Landroid/os/Message;)Z
    .registers 4

    .line 57
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    iget v0, p0, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_12

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    return v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_16

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Landroid/os/Message;)V

    :cond_15
    return-void

    .line 8
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_32

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_32

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3e

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Landroid/os/Message;)V

    return-void

    .line 13
    :cond_3e
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_89

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc(Lcom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    return-void

    .line 18
    :cond_68
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_7c

    .line 20
    :cond_77
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 21
    :goto_7c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 24
    :cond_89
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_ae

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_a1

    .line 27
    :cond_9c
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 28
    :goto_a1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 31
    :cond_ae
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_d1

    .line 32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_bd

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    .line 33
    :cond_bd
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 37
    :cond_d1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_fb

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0, v3, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    .line 41
    :cond_ee
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v3, v2, v6}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    return-void

    .line 44
    :cond_fb
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10c

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10c

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Landroid/os/Message;)V

    return-void

    .line 47
    :cond_10c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzc()V

    return-void

    .line 51
    :cond_11a
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
