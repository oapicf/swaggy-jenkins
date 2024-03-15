package handlers
import (
	"github.com/oapicf/swaggy-jenkins/models"
	"github.com/labstack/echo/v4"
	"net/http"
)

// GetCrumb - 
func (c *Container) GetCrumb(ctx echo.Context) error {
	return ctx.JSON(http.StatusOK, models.HelloWorld {
		Message: "Hello World",
	})
}

