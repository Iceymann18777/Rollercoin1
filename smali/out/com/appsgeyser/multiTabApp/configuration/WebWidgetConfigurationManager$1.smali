.class Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;
.super Ljava/lang/Object;
.source "WebWidgetConfigurationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;->saveConfiguration(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field final synthetic val$widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .registers 5

    .line 81
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->this$0:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 85
    :try_start_0
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v1, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;-><init>(Landroid/content/Context;)V

    .line 87
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    const-string v3, "webWidgetConfiguration"

    invoke-virtual {v0, v2, v3}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->serializeAndSaveObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfigurationManager$1;->val$widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    const-string v2, "widgetsController"

    invoke-virtual {v1, v0, v2}, Lcom/appsgeyser/multiTabApp/configuration/ObjectSerializer;->serializeAndSaveObject(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_21
    return-void
.end method
