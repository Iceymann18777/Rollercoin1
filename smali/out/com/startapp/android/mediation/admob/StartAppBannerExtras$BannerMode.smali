.class public final enum Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;
.super Ljava/lang/Enum;
.source "StartAppBannerExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/mediation/admob/StartAppBannerExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

.field public static final enum AUTO:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

.field public static final enum STANDARD:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

.field public static final enum THREED:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 9
    new-instance v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->AUTO:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    new-instance v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    const-string v1, "STANDARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->STANDARD:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    new-instance v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    const-string v1, "THREED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->THREED:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    .line 8
    sget-object v5, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->AUTO:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->STANDARD:Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->$VALUES:[Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;
    .registers 2

    .line 8
    const-class v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    return-object p0
.end method

.method public static values()[Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;
    .registers 1

    .line 8
    sget-object v0, Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->$VALUES:[Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    invoke-virtual {v0}, [Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/mediation/admob/StartAppBannerExtras$BannerMode;

    return-object v0
.end method
