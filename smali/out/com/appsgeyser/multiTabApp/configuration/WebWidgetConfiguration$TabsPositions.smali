.class public final enum Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabsPositions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

.field public static final enum BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

.field public static final enum BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

.field public static final enum DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

.field public static final enum TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 69
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const-string v1, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 70
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const-string v1, "BOTTOM_MENU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 71
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const-string v1, "DRAWER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 68
    sget-object v6, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;
    .registers 2

    .line 68
    const-class v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;
    .registers 1

    .line 68
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    return-object v0
.end method
