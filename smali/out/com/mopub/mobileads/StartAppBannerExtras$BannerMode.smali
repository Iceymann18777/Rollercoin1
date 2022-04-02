.class public final enum Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;
.super Ljava/lang/Enum;
.source "StartAppBannerExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/StartAppBannerExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

.field public static final enum AUTO:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

.field public static final enum STANDARD:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

.field public static final enum THREED:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 11
    new-instance v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->AUTO:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    new-instance v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    const-string v1, "STANDARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->STANDARD:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    new-instance v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    const-string v1, "THREED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->THREED:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    .line 10
    sget-object v5, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->AUTO:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->STANDARD:Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->$VALUES:[Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;
    .registers 2

    .line 10
    const-class v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;
    .registers 1

    .line 10
    sget-object v0, Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->$VALUES:[Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/StartAppBannerExtras$BannerMode;

    return-object v0
.end method
