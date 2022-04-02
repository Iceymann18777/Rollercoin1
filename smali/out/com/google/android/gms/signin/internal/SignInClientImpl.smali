.class public Lcom/google/android/gms/signin/internal/SignInClientImpl;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-base@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/signin/zad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/signin/internal/zae;",
        ">;",
        "Lcom/google/android/gms/signin/zad;"
    }
.end annotation


# instance fields
.field private final zaa:Z

.field private final zab:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zac:Landroid/os/Bundle;

.field private final zad:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ClientSettings;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 15

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 2
    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zaa:Z

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/signin/SignInOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 16

    .line 8
    invoke-static {p4}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;

    move-result-object v5

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/SignInClientImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/ClientSettings;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public static createBundleFromClientSettings(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;
    .registers 6

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->zad()Ljava/lang/Integer;

    move-result-object v1

    .line 53
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccount()Landroid/accounts/Account;

    move-result-object p0

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_21

    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_21
    if-eqz v0, :cond_86

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zaa()Z

    move-result p0

    const-string v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zab()Z

    move-result p0

    const-string v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zac()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 61
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zad()Z

    move-result p0

    const-string v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 64
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zae()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zaf()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zag()Z

    move-result p0

    const-string v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 69
    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zah()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 72
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string p0, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    :cond_77
    invoke-virtual {v0}, Lcom/google/android/gms/signin/SignInOptions;->zai()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 75
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_86
    return-object v2
.end method


# virtual methods
.method protected synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 82
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    instance-of v1, v0, Lcom/google/android/gms/signin/internal/zae;

    if-eqz v1, :cond_11

    .line 84
    check-cast v0, Lcom/google/android/gms/signin/internal/zae;

    return-object v0

    .line 85
    :cond_11
    new-instance v0, Lcom/google/android/gms/signin/internal/zah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/signin/internal/zah;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zac:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMinApkVersion()I
    .registers 2

    const v0, 0xbdfcb8

    return v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public requiresSignIn()Z
    .registers 2

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zaa:Z

    return v0
.end method

.method public final zaa()V
    .registers 3

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zae;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/zae;->zaa(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/internal/IAccountAccessor;Z)V
    .registers 5

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zae;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Ljava/lang/Integer;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 14
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zae;->zaa(Lcom/google/android/gms/common/internal/IAccountAccessor;IZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    const-string p1, "SignInClientImpl"

    const-string p2, "Remote service probably died when saveDefaultAccount is called"

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/signin/internal/zac;)V
    .registers 6

    const-string v0, "Expecting a valid ISignInCallbacks"

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zab:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ClientSettings;->getAccountOrDefault()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "<<default account>>"

    .line 28
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 30
    :cond_22
    new-instance v2, Lcom/google/android/gms/common/internal/zas;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/SignInClientImpl;->zad:Ljava/lang/Integer;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/internal/zas;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zae;

    new-instance v1, Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/internal/zak;-><init>(Lcom/google/android/gms/common/internal/zas;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/signin/internal/zae;->zaa(Lcom/google/android/gms/signin/internal/zak;Lcom/google/android/gms/signin/internal/zac;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_4a
    new-instance v2, Lcom/google/android/gms/signin/internal/zam;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/signin/internal/zam;-><init>(I)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/signin/internal/zac;->zaa(Lcom/google/android/gms/signin/internal/zam;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_55

    return-void

    :catch_55
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 39
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zab()V
    .registers 2

    .line 49
    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method
