.class public final enum Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlBarStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

.field public static final enum DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

.field public static final enum ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

.field public static final enum ENABLED_ON_EXTERNAL_URLS:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 57
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    const-string v1, "ENABLED_ON_EXTERNAL_URLS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    const-string v1, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    .line 56
    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;
    .registers 2

    .line 56
    const-class v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;
    .registers 1

    .line 56
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    return-object v0
.end method
