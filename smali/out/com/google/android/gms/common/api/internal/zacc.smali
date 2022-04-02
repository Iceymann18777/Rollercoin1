.class public final Lcom/google/android/gms/common/api/internal/zacc;
.super Lcom/google/android/gms/signin/internal/zad;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zab:Landroid/content/Context;

.field private final zac:Landroid/os/Handler;

.field private final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zag:Lcom/google/android/gms/signin/zad;

.field private zah:Lcom/google/android/gms/common/api/internal/zacd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    sget-object v0, Lcom/google/android/gms/signin/zaa;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacc;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zacc;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zacc;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zad;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zab:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zae:Ljava/util/Set;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zacc;)Lcom/google/android/gms/common/api/internal/zacd;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zah:Lcom/google/android/gms/common/api/internal/zacd;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/signin/internal/zam;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zacc;->zab(Lcom/google/android/gms/signin/internal/zam;)V

    return-void
.end method

.method private final zab(Lcom/google/android/gms/signin/internal/zam;)V
    .registers 5

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zam;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zam;->zab()Lcom/google/android/gms/common/internal/zau;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zau;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zau;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_52

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zah:Lcom/google/android/gms/common/api/internal/zacd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zacd;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->disconnect()V

    return-void

    .line 43
    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zah:Lcom/google/android/gms/common/api/internal/zacd;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zau;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zae:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zacd;->zaa(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_63

    .line 45
    :cond_5e
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zah:Lcom/google/android/gms/common/api/internal/zacd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zacd;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 46
    :goto_63
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->disconnect()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/zad;->zaa(Lcom/google/android/gms/signin/internal/zac;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zah:Lcom/google/android/gms/common/api/internal/zacd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zacd;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->disconnect()V

    return-void
.end method

.method public final zaa()V
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    if-eqz v0, :cond_7

    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/signin/zad;->disconnect()V

    :cond_7
    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zacd;)V
    .registers 11

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    if-eqz v0, :cond_7

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/signin/zad;->disconnect()V

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/ClientSettings;->zaa(Ljava/lang/Integer;)V

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacc;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zacc;->zab:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Landroid/os/Handler;

    .line 14
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zacc;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/zad;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zah:Lcom/google/android/gms/common/api/internal/zacd;

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zae:Ljava/util/Set;

    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_41

    .line 20
    :cond_3b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zag:Lcom/google/android/gms/signin/zad;

    invoke-interface {p1}, Lcom/google/android/gms/signin/zad;->zab()V

    return-void

    .line 19
    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zacb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zacc;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/signin/internal/zam;)V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zace;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/signin/internal/zam;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
