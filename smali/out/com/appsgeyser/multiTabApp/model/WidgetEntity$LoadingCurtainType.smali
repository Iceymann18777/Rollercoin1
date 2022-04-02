.class public final enum Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;
.super Ljava/lang/Enum;
.source "WidgetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingCurtainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

.field public static final enum BANNER:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

.field public static final enum CUSTOM:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

.field public static final enum DEFAULT:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

.field public static final enum NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 17
    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const-string v1, "BANNER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    new-instance v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const-string v1, "CUSTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->CUSTOM:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    sget-object v6, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->$VALUES:[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;
    .registers 2

    .line 17
    const-class v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;
    .registers 1

    .line 17
    sget-object v0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->$VALUES:[Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-object v0
.end method
