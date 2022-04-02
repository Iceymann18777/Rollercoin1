.class public abstract Lcom/google/android/gms/common/api/internal/zal;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile zaa:Z

.field protected final zab:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/common/api/internal/zak;",
            ">;"
        }
    .end annotation
.end field

.field protected final zac:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zad:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/base/zap;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zal;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method private static zaa(Lcom/google/android/gms/common/api/internal/zak;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zak;->zaa()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zak;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_30

    const/4 p2, 0x2

    if-eq p1, p2, :cond_10

    goto :goto_60

    .line 40
    :cond_10
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    if-nez v0, :cond_21

    return-void

    .line 45
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/16 p3, 0x12

    if-ne p2, p3, :cond_61

    if-ne p1, p3, :cond_61

    return-void

    :cond_30
    const/4 p1, -0x1

    if-ne p2, p1, :cond_34

    goto :goto_61

    :cond_34
    if-nez p2, :cond_60

    if-nez v0, :cond_39

    return-void

    :cond_39
    const/16 p1, 0xd

    if-eqz p3, :cond_43

    const-string p2, "<<ResolutionFailureErrorDetail>>"

    .line 56
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 57
    :cond_43
    new-instance p2, Lcom/google/android/gms/common/api/internal/zak;

    new-instance p3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, p1, v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/api/internal/zak;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p2

    :cond_60
    :goto_60
    const/4 v1, 0x0

    :cond_61
    :goto_61
    if-eqz v1, :cond_67

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->zab()V

    return-void

    :cond_67
    if-eqz v0, :cond_74

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zaa()I

    move-result p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_74
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 8
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/api/internal/zak;)I

    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->zab()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_34

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    const-string v2, "resolving_error"

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 18
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const-string v2, "failed_status"

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v2, -0x1

    const-string v3, "failed_client_id"

    .line 20
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 21
    new-instance v2, Lcom/google/android/gms/common/api/internal/zak;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    .line 23
    :goto_31
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zak;

    if-eqz v0, :cond_36

    const/4 v1, 0x1

    const-string v2, "resolving_error"

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zaa()I

    move-result v1

    const-string v2, "failed_client_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const-string v2, "failed_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zak;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "failed_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_36
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Z

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 69
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Z

    return-void
.end method

.method protected abstract zaa()V
.end method

.method protected abstract zaa(Lcom/google/android/gms/common/ConnectionResult;I)V
.end method

.method protected final zab()V
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zal;->zaa()V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 4

    .line 75
    new-instance v0, Lcom/google/android/gms/common/api/internal/zak;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zak;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 76
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/common/api/internal/zan;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/common/api/internal/zan;-><init>(Lcom/google/android/gms/common/api/internal/zal;Lcom/google/android/gms/common/api/internal/zak;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method
