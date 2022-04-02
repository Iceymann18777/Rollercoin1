.class public final enum Lcom/tappx/sdk/android/AdRequest$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/sdk/android/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tappx/sdk/android/AdRequest$Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/tappx/sdk/android/AdRequest$Gender;

.field public static final enum MALE:Lcom/tappx/sdk/android/AdRequest$Gender;

.field public static final enum OTHER:Lcom/tappx/sdk/android/AdRequest$Gender;

.field public static final enum UNKNOWN:Lcom/tappx/sdk/android/AdRequest$Gender;

.field private static final synthetic a:[Lcom/tappx/sdk/android/AdRequest$Gender;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/tappx/sdk/android/AdRequest$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tappx/sdk/android/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/sdk/android/AdRequest$Gender;->MALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    new-instance v0, Lcom/tappx/sdk/android/AdRequest$Gender;

    const-string v1, "FEMALE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tappx/sdk/android/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/sdk/android/AdRequest$Gender;->FEMALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    new-instance v0, Lcom/tappx/sdk/android/AdRequest$Gender;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tappx/sdk/android/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/sdk/android/AdRequest$Gender;->OTHER:Lcom/tappx/sdk/android/AdRequest$Gender;

    new-instance v0, Lcom/tappx/sdk/android/AdRequest$Gender;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tappx/sdk/android/AdRequest$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tappx/sdk/android/AdRequest$Gender;->UNKNOWN:Lcom/tappx/sdk/android/AdRequest$Gender;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/tappx/sdk/android/AdRequest$Gender;

    .line 2
    sget-object v6, Lcom/tappx/sdk/android/AdRequest$Gender;->MALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    aput-object v6, v1, v2

    sget-object v2, Lcom/tappx/sdk/android/AdRequest$Gender;->FEMALE:Lcom/tappx/sdk/android/AdRequest$Gender;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tappx/sdk/android/AdRequest$Gender;->OTHER:Lcom/tappx/sdk/android/AdRequest$Gender;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/tappx/sdk/android/AdRequest$Gender;->a:[Lcom/tappx/sdk/android/AdRequest$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tappx/sdk/android/AdRequest$Gender;
    .registers 2

    .line 1
    const-class v0, Lcom/tappx/sdk/android/AdRequest$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object p0
.end method

.method public static values()[Lcom/tappx/sdk/android/AdRequest$Gender;
    .registers 1

    .line 1
    sget-object v0, Lcom/tappx/sdk/android/AdRequest$Gender;->a:[Lcom/tappx/sdk/android/AdRequest$Gender;

    invoke-virtual {v0}, [Lcom/tappx/sdk/android/AdRequest$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tappx/sdk/android/AdRequest$Gender;

    return-object v0
.end method
