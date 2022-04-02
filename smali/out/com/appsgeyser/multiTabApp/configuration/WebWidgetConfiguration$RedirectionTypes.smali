.class public final enum Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedirectionTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

.field public static final enum NO_REDIRECT:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

.field public static final enum REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

.field public static final enum REDIRECT_EXTERNAL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 87
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    const-string v1, "REDIRECT_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    .line 88
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    const-string v1, "REDIRECT_EXTERNAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_EXTERNAL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    .line 89
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    const-string v1, "NO_REDIRECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->NO_REDIRECT:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    .line 86
    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_EXTERNAL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;
    .registers 2

    .line 86
    const-class v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;
    .registers 1

    .line 86
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    return-object v0
.end method
