<?php

namespace App\Admin\Controllers;

use App\AboutPage;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AboutPageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'AboutPage';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AboutPage());
        // $grid->disableTools();
        $grid->disableFilter();
        $grid->disableCreateButton();
        $grid->disableBatchActions();
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableDelete();
            // $actions->disableEdit();
            // $actions->disableView();
        });
        $grid->column('id', __('Id'));
        $grid->column('heading', __('Heading'));
        $grid->column('content', __('Content'));
        $grid->column('image', __('Image'))->image();
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(AboutPage::findOrFail($id));
        $show->panel()->tools(function ($tools) {
            $tools->disableDelete();
            // $tools->disableList();

        });
        $show->field('id', __('Id'));
        $show->field('heading', __('Heading'));
        $show->field('content', __('Content'));
        $show->field('image', __('Image'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new AboutPage());
        $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete();
            // $tools->disableList();
            // $tools->disableView();
        });
        $form->text('heading', __('Heading'));
        $form->ckeditor('content', __('Content'));
        $form->image('image', __('Image'));

        return $form;
    }
}
