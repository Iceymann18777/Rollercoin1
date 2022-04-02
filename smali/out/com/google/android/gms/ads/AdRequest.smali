.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200


# instance fields
.field private final zzun:Lcom/google/android/gms/internal/ads/zzlw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlw;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzlx;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;-><init>(Lcom/google/android/gms/internal/ads/zzlx;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zza;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlw;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlw;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getGender()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlw;->getGender()I

    move-result v0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlw;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlw;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object p1

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzlw;->isTestDevice(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final zzay()Lcom/google/android/gms/internal/ads/zzlw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzun:Lcom/google/android/gms/internal/ads/zzlw;

    return-object v0
.end method
